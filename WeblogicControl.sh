#!/bin/bash
#-- WeblogicControl.sh
#-- startup/shutdown for Weblogic Servers

#
#-- export some relevant envir variables
#
HOSTNAME=`hostname`
export ORA_SW_HOME=/home/oracle
export ORACLE_HOME=$ORA_SW_HOME/Middleware/Oracle_BI1
export WL_HOME=$ORA_SW_HOME/Middleware/wlserver_10.3
export WL_INSTANCE=$ORA_SW_HOME/Middleware/instances/instance1/bin
export WL_BI_DOMAIN_SERVERS=$ORA_SW_HOME/Middleware/user_projects/domains/bifoundation_domain/servers
export WL_BI_DOMAIN_BIN=$ORA_SW_HOME/Middleware/user_projects/domains/bifoundation_domain/bin
#
#-- setup our environment so we can call WLST if needed
#

startWLS() {
        #  . $WL_BI_DOMAIN_BIN/setDomainEnv.sh
        #
        #-- start Admin Server
        #
        echo "Starting WL AdminServer, log at: $WL_BI_DOMAIN_SERVERS/AdminServer/logs/StartAdminServer.out"
        nohup $WL_BI_DOMAIN_BIN/startWebLogic.sh \
                1>$WL_BI_DOMAIN_SERVERS/AdminServer/logs/StartAdminServer.out 2>$WL_BI_DOMAIN_SERVERS/AdminServer/logs/StartAdminServer.err &
        sleep 60
        #
        #-- start NodeManager
        #
        echo "Starting WL NodeManager, log at: $WL_HOME/nodemanager.out"
        nohup $WL_HOME/server/bin/startNodeManager.sh 1>$WL_HOME/nodemanager.out 2>$WL_HOME/nodemanager.log &
        sleep 60
        #
        #-- start managed server(s)
        echo "Starting WL ManagedServer bi_server1, log at: $WL_BI_DOMAIN_SERVERS/bi_server1/logs/startManagedServer.out"
        nohup $WL_BI_DOMAIN_BIN/startManagedWebLogic.sh "bi_server1" "http://$HOSTNAME:7001" \
                1>$WL_BI_DOMAIN_SERVERS/bi_server1/logs/startManagedServer.out 2> $WL_BI_DOMAIN_SERVERS/bi_server1/logs/startManagedServer.err &
        sleep 60
        #
        #-- start the BI stuff
        #
        echo "Starting opmnctl"
        opmnctl startall
}

stopWLS() {
        #--  . $WL_BI_DOMAIN_BIN/setDomainEnv.sh
        #
        #-- stop the BI stuff
        #
        opmnctl stopall
        #
        #-- stop managed server(s)
        #
        echo "Stopping managed server bi_server1"
        nohup $WL_BI_DOMAIN_BIN/stopManagedWebLogic.sh "bi_server1" "t3://$HOSTNAME:7001" \
                1>>$WL_BI_DOMAIN_SERVERS/bi_server1/logs/startManagedServer.out 2>> $WL_BI_DOMAIN_SERVERS/bi_server1/logs/startManagedServer.err &
        sleep 60
        #
        #-- find and kill node manager
        #
        echo "Killing node manager"
        pkill -u oracle -f weblogic.NodeManager
        #
        #-- stop Admin Server
        #
        echo "Stopping AdminServer"
        nohup $WL_BI_DOMAIN_BIN/stopWebLogic.sh \
                1>$WL_BI_DOMAIN_SERVERS/AdminServer/logs/StartAdminServer.out 2>$WL_BI_DOMAIN_SERVERS/AdminServer/logs/StartAdminServer.err &
        sleep 60
}

case "$1" in
        start)
                startWLS
        ;;
        stop)
                stopWLS
        ;;
        restart)
                stopWLS
                startWLS
        ;;
        *)
                echo "Usage: $(basename $0) start|stop|restart"
                exit 1
        ;;
esac

exit 0

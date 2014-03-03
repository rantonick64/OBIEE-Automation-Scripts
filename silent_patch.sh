#!/bin/bash

cp /home/oracle/Middleware/user_projects/domains/bifoundation_domain/servers/AdminServer/security/boot.properties /home/oracle/Middleware/
export PATCH_FOLDER=/var/mdtdata/stage/install/bi117/16556157
export JAVA_HOME=/home/oracle/Middleware/Oracle_BI1
export PATH=$ORACLE_HOME/Opatch:$JAVA_HOME/bin:$ORACLE_HOME/bin:$PATH
opatch napply -silent $PATCH_FOLDER -id 16453010,16842070,16849017,16850553,16869578,16916026
opatch lsinventory
cp /home/oracle/Middleware/boot.properties /home/oracle/Middleware/user_projects/domains/bifoundation_domain/servers/AdminServer/security/


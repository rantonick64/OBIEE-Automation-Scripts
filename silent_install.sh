#DO NOT CHANGE THIS.
Response File Version=1.0.0.0.0

#Set this to true if you wish to specify a directory where latest updates are downloaded. This option would use the software updates from the specified directory
SPECIFY_DOWNLOAD_LOCATION=false

#Set this to true to skip the Software updates
SKIP_SOFTWARE_UPDATES=true

#If the Software updates are already downloaded and available on your local system, then specify the path to the directory where these patches are available and set SPECIFY_DOWNLOAD_LOCATION to true
SOFTWARE_UPDATES_DOWNLOAD_LOCATION=

#Install Software and Configure Components for Express Install. Installs and Configures components with default settings. Installs the light-weight WebLogic Server and creates a new domain.
INSTALL_FOR_DEVELOPMENT_TYPE=false

#Install and Configure Software Components and Applications. Installs binaries in an ORACLE_HOME and configures working instances in an INSTANCE_HOME.
INSTALL_AND_CONFIGURE_TYPE=true

#Install Software Components and Applications. Installs binaries in an ORACLE_HOME, but do not configure working instances of installed components.
INSTALL_AND_CONFIGURE_LATER_TYPE=false

#Set this to true if you want to create a new BI System, all other required variables need to be provided. If this is set to true then variables "SCALEOUT_BISYSTEM" and "EXTEND_BISYSTEM" must be set to false, since the variables are mutually exclusive.
CREATE_BISYSTEM=true

#Set this to true if you want to scale out an existing BI System, all other required variables need to be provided. If this is set to true then variables "CREATE_BISYSTEM","EXTEND_BISYSTEM" and "UPDATE_BIDOMAIN" must be set to false, since the variables are mutually exclusive. In order to scale out an existing BI system, the domain in the system must be running
SCALEOUT_BISYSTEM=false

#Set this to true if you want to configure BI System in an existing exmpty domain in the localhost, all other required variables need to be provided. If this is set to true then variables "CREATE_BISYSTEM","SCALEOUT_BISYSTEM" and "UPDATE_BIDOMAIN" must be set to false, since the variables are mutually exclusive.
EXTEND_BISYSTEM=false

#Set this to true if you want to update an existing BI System running on the localhost, all other required variables need to be provided. If this is set to true then variables "CREATE_BISYSTEM","EXTEND_BISYSTEM" and "SCALEOUT_BISYSTEM" must be set to false, since the variables are mutually exclusive.
UPDATE_BIDOMAIN=false

#Write the name of the domain you want to create. Domain name may only contain alphanumeric characters, or the underscore (_) or hyphen (-) characters.
DOMAIN_NAME=bifoundation_domain

#Write the name of the cell you want to create. Cell name may only contain alphanumeric characters, or the underscore (_) or hyphen (-) characters.
CELL_NAME=unknown

#Write the name of the host to which you want to connect. It should have an already existing domain configured.
DOMAIN_HOSTNAME=

#Give the port number at which the host should be connected.
DOMAIN_PORT=7001

#Give an administrator user name for the domain if you are creating a new one otherwise give the administrator user name for the domain configured at the host.
ADMIN_USER_NAME=weblogic

#Give an administrator password for the domain if you are creating a new one otherwise give the administrator password for the domain configured at the host.
ADMIN_PASSWORD=

#Write the administrator password again to confirm.
ADMIN_CONFIRM_PASSWORD=

#Is Single Server Install.
WLS_SINGLE_SERVER_INSTALL=false

#Write the complete path to a valid Middleware Home.
MW_HOME=/home/oracle/Middleware

#Give the complete path to a valid WebLogic Server Home.
WEBLOGIC_HOME=/home/oracle/Middleware/wlserver_10.3

#Give the name of the Oracle Home directory. The Oracle Home directory name may only contain alphanumeric , hyphen (-) , dot (.) and underscore (_) characters, and it must begin with an alphanumeric character.
ORACLE_HOME=/home/oracle/Middleware/Oracle_BI1

#Give the complete path for an Oracle Instance directory to be created. This is the location where the software configuration files and runtime processes will reside.
INSTANCE_HOME=/home/oracle/Middleware/instances/instance1

#Give a name for Oracle Instance corresponding to the Instance Home. The Oracle Instance name may only contain alphanumeric and underscore (_) characters, it must begin with an alphabetic (a-z or A-Z) character, and must be from 4 to 30 characters in length.
INSTANCE_NAME=instance1

#Give the complete path for a domain home to be created.
DOMAIN_HOME_PATH=/home/oracle/Middleware/user_projects/domains/bifoundation_domain

#Format: hostname:port:servicename. For Application Cluster Database: host1:port1^host2:port2@servicename
DATABASE_CONNECTION_STRING_BI=

#Enter the BIPLATFORM schema username.
DATABASE_SCHEMA_USER_NAME_BI=

#Enter the BIPLATFORM schema password.
DATABASE_SCHEMA_PASSWORD_BI=


#Select the database type in which the BIPLATFORM schema exists. Supported database types are Oracle Database, Microsoft SQL Server, IBM DB2.
DATABASE_TYPE_BI=Oracle Database

#Format: hostname:port:servicename. For Application Cluster Database: host1:port1^host2:port2@servicename
DATABASE_CONNECTION_STRING_MDS=XXXXXXX:1521:XXXX

#Enter the MDS schema username.
DATABASE_SCHEMA_USER_NAME_MDS=

#Enter the MDS schema password.
DATABASE_SCHEMA_PASSWORD_MDS=

#Select the database type in which the MDS schema exists. Supported database types are Oracle Database, Microsoft SQL Server, IBM DB2.
DATABASE_TYPE_MDS=Oracle Database

#
AUTOMATIC_PORT_DETECT=true

#
STATICPORT INI FILE LOCATION=

#Provide the My Oracle Support Username. If you wish to ignore Oracle Configuration Manager configuration provide empty string for user name.
MYORACLESUPPORT_USERNAME=

#Provide the My Oracle Support Password
MYORACLESUPPORT_PASSWORD=<SECURE VALUE>

#Set this to true if you wish to decline the security updates. Setting this to true and providing empty string for My Oracle Support username will ignore the Oracle Configuration Manager configuration
DECLINE_SECURITY_UPDATES=true

#Set this to true if My Oracle Support Password is specified
SECURITY_UPDATES_VIA_MYORACLESUPPORT=false

#Provide the Proxy Host
PROXY_HOST=

#Provide the Proxy Port
PROXY_PORT=

#Provide the Proxy Username
PROXY_USER=

#Provide the Proxy Password
PROXY_PWD=<SECURE VALUE>

#Type String (URL format) Indicates the OCM Repeater URL which should be of the format [scheme[Http/Https]]://[repeater host]:[repeater port]
COLLECTOR_SUPPORTHUB_URL=


[SYSTEM]


[APPLICATIONS]

#Set to true to configure Oracle Business Intelligence Enterprise Edition. Otherwise set to false.
CONFIGURE_BI=true

#Set to true to configure Oracle Business Intelligence Publishing and Reporting. Otherwise set to false.
CONFIGURE_BIP=true

#Set to true to configure Oracle Real-Time Decisions. Otherwise set to false.
CONFIGURE_RTD=false

#Set to true to select all Oracle Essbase Components. Otherwise set to false.
CONFIGURE_ESSBASE_SUITE=false


[RELATIONSHIPS]


#!/bin/bash
PATH=$PATH:/home/digicelpaxfr/scripts

# to get yesterday string use ---> date -d "1 day ago" +"%Y%m%d"

daystr=`date -d "1 day ago" +"%Y%m%d"`

cd /home/digicelpaxfr/scripts/
cp sftp_commands_local.template sftp_commands_local
sed -i 's/$daystr/'$daystr'/g' sftp_commands_local

sftp -bsftp_commands_local sftpuser@172.27.71.137

exit 0

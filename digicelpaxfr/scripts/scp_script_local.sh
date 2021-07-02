#!/bin/bash
PATH=$PATH:/home/digicelpaxfr/scripts

# to get yesterday string use ---> date -d "1 day ago" +"%Y%m%d"

daystr=`date -d "1 day ago" +"%Y%m%d"`

sftp -bsftp_commands_local sftpuser@172.27.71.137

exit 0

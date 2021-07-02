#!/bin/bash
PATH=$PATH:/home/digicelpaxfr/scripts

# to get yesterday string use ---> date -d "1 day ago" +"%Y%m%d"

daystr=`date -d "1 day ago" +"%Y%m%d"`

sftp sftpuser@172.27.71.137

lcd /home/digicelpaxfr/PARA_ENVIAR

get  Terminated$daystr.csv
get  Ported$daystr.csv

exit 0

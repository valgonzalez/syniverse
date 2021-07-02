#!/bin/bash
export PATH=$PATH:/usr/NX/bin:/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/home/digicelpaxfr/bin

# to get yesterday string use ---> date -d "1 day ago" +"%Y%m%d"

daystr=`date -d "1 day ago" +"%Y%m%d"`

sftp sftpuser@172.27.71.173

lcd /home/digicelpaxfr/PARA_ENVIAR

get  Terminated$daystr.csv
get  Ported$daystr.csv

exit 0

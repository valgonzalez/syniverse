#!/bin/bash
export PATH=$PATH:/usr/NX/bin:/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/home/digicelpaxfr/bin
#Se modifica esquema de buscar archivo dia anterior, ahora busca archivos del dia  - Juan Berrio 2012nov8:::by LCA



############## BUSCAR ARCHIVOS EN SERVIDOR WINDOWS #################



HOST=172.27.71.137  #This is the FTP servers host or IP address.
USER=FTP_User_ASEP             #This is the FTP user that has access to the server.
PASS=D1g1sec2016         #This is the password for the FTP user.
#DIR_DEST=ASEP_Files

# to get yesterday string use ---> date -d "1 day ago" +"%Y%m%d"

daystr=`date -d "1 day ago" +"%Y%m%d"`


# Call 1. Uses the ftp command with the -inv switches.  -i turns off interactive prompting. -n Restrains FTP from attempting the auto-login feature. -v enables verbose and progress. 

# I WILL GET THE LISTING TO FILTER THE LASTEST FILES

ftp -inv $HOST << EOF

user $USER $PASS

#cd $DIR_DEST


lcd /home/digicelpaxfr/PARA_ENVIAR

get  Terminated$daystr.csv
get  Ported$daystr.csv

bye

EOF  


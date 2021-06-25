#!/bin/bash
export PATH=$PATH:/usr/NX/bin:/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/home/digicelpaxfr/bin
# Send files to syniverse
#
sftp digicelpaxfr@ftp.netnumber.com <<EOF
lcd /home/syniverse/PARA_ENVIAR
cd  /home/ftp/somedir
mput *.dat
lcd /home/recieving
cd /home/someotherdir
mget *.dat
EOF

#!/bin/bash
export PATH=$PATH:/usr/NX/bin:/usr/kerberos/bin:/usr/local/bin:/bin:/usr/bin:/home/digicelpaxfr/bin


cd  /home/digicelpaxfr/scripts


sftp -bsftp_commands digicelpaxfr@ftp.netnumber.com

# Mover files a ENVIADOS despues hacer sftp.

mv /home/digicelpaxfr/PARA_ENVIAR/* /home/digicelpaxfr/ENVIADOS/



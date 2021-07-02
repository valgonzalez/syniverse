#!/bin/bash
PATH=$PATH:/home/digicelpaxfr/scripts

cd  /home/digicelpaxfr/scripts

sftp -bsftp_commands digicelpaxfr@ftp.netnumber.com

# Mover files a ENVIADOS despues hacer sftp.

mv /home/digicelpaxfr/PARA_ENVIAR/* /home/digicelpaxfr/ENVIADOS/



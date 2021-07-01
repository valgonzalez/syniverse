#!/bin/bash
#
#
#Script para buscar archivos a equipo windows y enviar a syniverse
#

destmail="Pan_Application_Team@digicelgroup.com"
#destmail="luiscarlos.alvarez@digicelgroup.com"

cat /dev/null > /home/digicelpaxfr/scripts/scp.log

(echo ;date;echo ) >> /home/digicelpaxfr/scripts/scp.log

/home/digicelpaxfr/scripts/scp_script_local.sh >> /home/digicelpaxfr/scripts/scp.log 2>>/home/digicelpaxfr/scripts/scp.log

/home/digicelpaxfr/scripts/scp_script.sh >> /home/digicelpaxfr/scripts/scp.log 2>>/home/digicelpaxfr/scripts/scp.log

# Optional line
# [ $? -ne 0 ] && ( echo Not files found | mailx -s "Syniverse send file failed" $destmail ) ||  ( echo files sent ok. | mailx -s "Syniverse send file OK" $destmail )

cat /home/digicelpaxfr/scripts/scp.log |  mailx -s "Syniverse send file process complete"  $destmail

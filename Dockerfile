FROM debian:latest
RUN apt -y update
RUN apt -y install sudo bsd-mailx procps cron
RUN apt -y install ftp
RUN apt -y install openssh-client
WORKDIR /home/digicelpaxfr
COPY ./digicelpaxfr  /home/digicelpaxfr
RUN useradd -d /home/digicelpaxfr -s /bin/bash digicelpaxfr
RUN chown -R digicelpaxfr /home/digicelpaxfr
RUN chgrp -R digicelpaxfr /home/digicelpaxfr
RUN chmod +x /home/digicelpaxfr/scripts/syniverse_files.sh
COPY syneverse-scheduler /etc/cron.d/syneverse-scheduler
RUN chmod 0644 /etc/cron.d/syneverse-scheduler &&\
    crontab /etc/cron.d/syneverse-scheduler
#ENTRYPOINT ["/home/digicelpaxfr/scripts/syniverse_files.sh"]
#ENTRYPOINT ["/bin/bash"]
#ENTRYPOINT ["/home/digicelpaxfr/scripts/entrada.sh"]
ENTRYPOINT ["cron", "-f"]

FROM debian:latest

RUN apt -y update

RUN apt -y install sudo bsd-mailx

WORKDIR /home/digicelpaxfr

COPY ./digicelpaxfr  /home/digicelpaxfr

RUN chmod +x /home/digicelpaxfr/scripts/syniverse_files.sh

ENTRYPOINT ["/home/digicelpaxfr/scripts/syniverse_files.sh"]

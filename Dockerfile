FROM centos:7

RUN yum update -y

RUN yum install -y sudo

RUN yum install -y mailx

RUN yum clean all

WORKDIR /home/digicelpaxfr

COPY ./digicelpaxfr  /home/digicelpaxfr

CMD /bin/bash

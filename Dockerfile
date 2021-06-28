FROM centos:7
LABEL maintainer="tyconcps"
ENV ENVIRONMENT DOCKER_PROD
RUN yum install -y https://repo.ius.io/ius-release-el7.rpm  \
    && yum -y update   \
    && yum install -y python36u python36u-libs python36u-devel python36u-pip

ADD lib /lib
ADD requirements.txt /
RUN pip3 install -r requirements.txt
FROM ubuntu:14.04
MAINTAINER "soojeong-ryu <sjryu@dshub.cloud>"
LABEL "purpose"="webserver practice"
RUN apt-get update && \ 
    apt-get install apache2 -y -qq --no-install-recommends && \
    apt-get clean -y && \
    apt-get autoremove -y && \
    rm -rfv /var/lib/apt/lists/* /tmp/* /var/tmp/*
WORKDIR /var/www/html
ADD index.html .
EXPOSE 80
CMD apachectl -D FOREGROUND

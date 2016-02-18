FROM nordstrom/baseimage-ubuntu:14.04
MAINTAINER Innovation Platform Team "invcldtm@nordstrom.com"

RUN echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu trusty main" > /etc/apt/sources.list.d/nginx.list \
 && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C \
 && apt-get update -qy \
 && apt-get install -qy \
      nginx

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx"]

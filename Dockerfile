FROM ubuntu
MAINTAINER Fernando Corrêa de Oliveira

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y perl build-essential curl
RUN curl get.mojolicio.us | sh
ADD . /rio.pm.org
CMD ["/rio.pm.org/script/site", "daemon"]
EXPOSE 3000

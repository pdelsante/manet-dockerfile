FROM ubuntu:14.04
MAINTAINER pietro.delsante@gmail.com
ENV DEBIAN_FRONTEND noninteractive
EXPOSE 8891

RUN apt-get update && \
    apt-get -y install curl && \
    curl -sL https://deb.nodesource.com/setup | sudo bash - && \
    apt-get -y install nodejs build-essential xvfb libfontconfig1 && \
    npm install -g slimerjs && \
    npm install -g phantomjs && \
    npm install -g manet

ENTRYPOINT ["/usr/bin/manet"]

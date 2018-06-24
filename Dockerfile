# This is a Dockerfile for creating a Manet container from a base Ubuntu 14:04 image.
# Manet's code can be found here: https://github.com/vbauer/manet
#
# To use this container, start it as usual:
#
#    $ sudo docker run pdelsante/manet
#
# Then find out its IP address by running:
#
#    $ sudo docker ps                  
#    CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
#    d1d7165512e2        pdelsante/manet     "/usr/bin/manet"    48 seconds ago      Up 47 seconds       8891/tcp            romantic_cray
#
#    $ sudo docker inspect d1d7165512e2 | grep IPAddress
#         "IPAddress": "172.17.0.1",
#
# Now you can connect to:
#    http://172.17.0.1:8891
#
FROM ubuntu:18.04
MAINTAINER pietro.delsante_AT_gmail.com
ENV DEBIAN_FRONTEND noninteractive
EXPOSE 8891

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
    	    nodejs build-essential xvfb libfontconfig1 ca-certificates npm && \
    npm install -g slimerjs@1.0.0 && \
    npm install -g phantomjs-prebuilt@2.1.16 && \
    npm install -g manet@0.4.21 && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["/usr/local/bin/manet", "--port", "8891"]

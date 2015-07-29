FROM ubuntu:14.04.2

MAINTAINER minimum@cepave.com

# Install Open-Falcon Graph Component
ENV WORKDIR=/home/graph PACKDIR=/package PACKFILE=falcon-graph.tar.gz CONFIGDIR=/config CONFIGFILE=cfg.json
VOLUME $CONFIGDIR $WORKDIR $PACKDIR
WORKDIR /root
COPY $CONFIGFILE $CONFIGDIR/
COPY $PACKFILE $PACKDIR/
COPY run.sh ./
RUN chmod +x run.sh
CMD ["./run.sh"]

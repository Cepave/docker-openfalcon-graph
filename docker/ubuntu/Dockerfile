FROM ubuntu:14.04.2

MAINTAINER minimum@cepave.com

ENV WORKDIR=/home/graph DOCKERDIR=docker/ubuntu PACKFILE=falcon-graph.tar.gz CONFIGDIR=/config CONFIGFILE=cfg.json

# Install Open-Falcon Graph Component
RUN mkdir -p $WORKDIR $CONFIGDIR
ADD $DOCKERDIR/$PACKFILE $WORKDIR
COPY src/$CONFIGFILE $CONFIGDIR/
RUN ln -sf $CONFIGDIR/$CONFIGFILE $WORKDIR/$CONFIGFILE

WORKDIR $WORKDIR
COPY $DOCKERDIR/run.sh $WORKDIR

# Port
EXPOSE 6070 6071

# Start
ENTRYPOINT ["/bin/bash"]
CMD ["run.sh"]


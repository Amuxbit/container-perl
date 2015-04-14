# ------------------------------------------------------
#                       Dockerfile
# ------------------------------------------------------
# image:    docker-perl
# tag:      5.018002
# name:     amuxbit/docker-perl
# version:  1.0.0
# repo:     https://github.com/amuxbit/docker-perl
# how-to:   docker build --force-rm -t amuxbit/docker-perl:5.018002 .
# run:      docker run -t -i amuxbit/docker-perl:5.018002 /opt/perl5/perls/perl-5.20.2/bin/perl -e "print('hi from inside a container')"
# run interactive: docker run -t -i docker-perl /bin/bash
# requires: ubuntu
# authors:  jason.giedymin@gmail.com
# ------------------------------------------------------

FROM amuxbit/docker-ubuntu:latest
MAINTAINER amuxbit

# -----> Env
ENV WORKDIR /tmp/build/docker-perl
ENV PERL_VER perl-5.18.2
ENV SYS_PERLBREW_ROOT /opt/perl5
ENV PERLBREW_ROOT=$SYS_PERLBREW_ROOT
ENV PERLBREW_HOME=/opt/.perlbrew
ENV PATH=$PERLBREW_ROOT/perls/$PERL_VER/bin:$PATH
ENV SHELL=/bin/bash

WORKDIR /tmp/build/docker-perl

# -----> Add assets
ADD ./ubuntu $WORKDIR/ubuntu

# -----> Execute
# Libs
RUN git clone https://github.com/Amuxbit/container-automation-lib.git lib
RUN chmod +x $WORKDIR/ubuntu
RUN $WORKDIR/ubuntu

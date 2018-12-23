#
# Lakka Dockerfile
#
# Allows building Lakka through Docker.
#
# Usage:
#
#    docker build -t lakka .
#    docker run -it -v $(pwd):/root lakka
#

FROM ubuntu:bionic

RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y \
		build-essential \
		bash \
		bc \
		build-essential \
		bsdmainutils \
		bzip2 \
		default-jre \
		diffutils \
		g++ \
		gawk \
		gcc \
		git-core \
		gperf \
		gzip \
		libjson-perl \
		libncurses5-dev \
		lzop \
		make \
		libssl-dev\
		patch \
		patchutils \
		perl \
		python \
		sed \
		sudo \
		tar \
		texinfo \
		u-boot-tools\
		unzip \
		wget \
		xfonts-utils \
		xfonts-utils \
		xfonts-utils \
		xsltproc \
		xz-utils \
		zip \
	&& rm -rf /var/lib/apt/lists/*

ENV HOME /root
ENV DISTRO Lakka

VOLUME /root

WORKDIR /root

CMD make image

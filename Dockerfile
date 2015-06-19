## -*- docker-image-name: "armbuild/scw-app-openvpn:latest" -*-
FROM armbuild/scw-distrib-ubuntu:trusty
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN apt-get -q update \
 && apt-get -y -q upgrade \
 && apt-get install -y -q \
	curl \
	iptables \
	iptables-persistent \
    	openvpn \
	uuid \
 && apt-get clean


# Patch rootfs
ADD ./patches/etc/ /etc/
ADD ./patches/usr/local/ /usr/local/


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave

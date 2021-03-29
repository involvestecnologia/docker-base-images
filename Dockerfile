ARG BASE_IMAGE

FROM ${BASE_IMAGE}

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt-get -qqy update \
 && apt-get -qqy dist-upgrade \
 && apt-get -qqy install \
    ca-certificates \
    curl \
    jq \
    netcat \
    net-tools \
    ngrep \
    vim-tiny \
 && apt-get -qqy autoremove \
 && apt-get -qqy clean \
 && rm -rf /var/lib/apt/*

COPY etc/security/limits.d/node-user.conf /etc/security/limits.d/node-user.conf

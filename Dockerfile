ARG BASE_IMAGE

FROM ${BASE_IMAGE}

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt -qqy update \
 && apt -qqy dist-upgrade \
 && apt -qqy install \
    ca-certificates \
    curl \
    git \
    jq \
    netcat \
    net-tools \
    ngrep \
    vim-tiny \
 && apt -qqy autoremove \
 && apt -qqy clean \
 && rm -rf /var/lib/apt/*

COPY etc/security/limits.d/node-user.conf /etc/security/limits.d/node-user.conf

#!/bin/bash

yum install epel-release

yum install unzip ctags jq tree

yum install git

yum install glide

# 移除7.4版本，安装8.0并支持lua
cd /tmp && \
rpm -e --nodeps vim-minimal-7.4.160-4.el7.x86_64 && \
curl -LO "http://mirror.ghettoforge.org/distributions/gf/el/7/gf/x86_64/gf-release-7-10.gf.el7.noarch.rpm" && \
rpm -Uvh gf-release*rpm && \
rm gf-release*rpm && \
yum --enablerepo=gf-plus install vim-enhanced

yum install docker

yum install zsh autojump-zsh

timedatectl set-timezone Asia/Shanghai &&\
 yum install ntp &&\
 systemctl enable ntpd.service &&\
 systemctl start ntpd.service

#!/bin/bash

yum install epel-release

yum install unzip ctags jq tree

yum install git

yum install glide

yum install docker

yum install zsh autojump-zsh

timedatectl set-timezone Asia/Shanghai &&\
 yum install ntp &&\
 systemctl enable ntpd.service &&\
 systemctl start ntpd.service

#!/bin/bash

# 移除7.4版本，安装8.0并支持lua
cd /tmp && \
rpm -e --nodeps vim-minimal-7.4.160-4.el7.x86_64 && \
yum install gf-release \
yum --enablerepo=gf-plus install vim-enhanced


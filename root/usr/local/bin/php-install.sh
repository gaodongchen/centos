#!/bin/bash

yum install centos-release-scl-rh

yum install rh-php71 rh-php71-php-cli rh-php71-php-fpm\
 rh-php71-php-gd rh-php71-php-json rh-php71-php-mbstring rh-php71-php-mysqlnd\
 rh-php71-php-pdo rh-php71-php-xml rh-php71-php-zip

scl enable rh-php71 "php -v"
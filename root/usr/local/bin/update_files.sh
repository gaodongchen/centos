#!/bin/bash

FILE_LIST=$1

DIR_NAME=$(basename $(pwd)) 
FILE_ID=$(date +%s) 
FILE_NAME=$FILE_ID.tar.gz

tar -zcf /tmp/$FILE_NAME --exclude=.git --exclude=vendor $FILE_LIST

scp -P $SSH_PORT /tmp/$FILE_NAME $SSH_USER_HOST:/tmp

rm /tmp/$FILE_NAME

ssh -p $SSH_PORT $SSH_USER_HOST "
    cd /usr/local/share/web/${DIR_NAME} && \
    tar -zxf /tmp/${FILE_NAME} && \
    chmod 777 -R storage && chmod 777 -R bootstrap/cache && \
    rm /tmp/${FILE_NAME}
"

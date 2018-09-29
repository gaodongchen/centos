#!/bin/bash

function checkPort()
{
    port=$1
    count_ssh=$(lsof -i tcp:$port|grep ssh|wc -l)

    if [ "$count_ssh" -lt "1" ]; then
        return 0
    fi
    return 1
}

function startMysqlClient()
{
    mysql -h 127.0.0.1 -u$1 -p$2 -P $3
}

function createTunnel()
{
    checkPort $1
    if [ $? = "0" ]; then
        ssh -NCf -L $1:$2 123.56.17.248
    fi
}

function pipidb()
{
    if [ $1 ]; then
        dbname=$1
    else
        read -p "输入项目名称:" dbname
    fi

    case $dbname in 
        dev)
            mysql -u webroot -h 192.168.2.104
            ;;
        core)
            port=3306
            createTunnel $port 192.168.1.13:3306
            startMysqlClient pipi_core_writer Fx8UKriHK4k $port
            ;;
        card)
            port=3307
            createTunnel $port 192.168.1.29:3306
            startMysqlClient card_writer Fx8UKriHK4k $port
            ;;
        mall)
            port=3308
            createTunnel $port 192.168.1.15:3306
            startMysqlClient mall_writer Fx8UKriHK4k $port
            ;;
        *)
            echo "没有找到数据库"
    esac
}


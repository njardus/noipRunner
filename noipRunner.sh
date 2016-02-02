#!/bin/bash

externalIP=$( echo $(DOMAIN) has address $(wget http://ipinfo.io/ip -qO $
noip=$(host $(DOMAIN)

clear
$externalIP=echo $externalIP
$noip=echo $noip

echo "noipRunner.sh has run at:" >> ~/scripts/noipRunner.log
date >> ~/scripts/noipRunner.log

if [ "echo $externalIP" = "echo $noip" ];  then
    echo "IP up to date"
    #do nothing
    exit 1
else
    noip2
    echo "IP out of date, starting noip"
    echo "noip started at " >> ~/scripts/noipRunner.log
    date >> ~/scripts/noipRunner.log
    exit 1
fi

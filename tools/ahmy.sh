#!/bin/env bash
#Coded By Djawed Hammadi
#FACEBOOK:www.facebook.com/djawedx23
#Copyright@2020
cd ..
ahmmalaf= cd xline/smali/ahmyth/mine/king/ahmyth
sed 's+ const-string v4, "http://+'*/'+g' IOSocket.smali > line.txt
ahmhost=$(grep "*/" line.txt )
if [[ $ahmhost == "" ]];then
printf ""
elif [[ $ahmhost != "" ]];then
printf "\033[1;33mHOST_AND_PORT \033[1;37m-->\033[0;32m Found : \033[1;37m($ahmhost)\n\n"
fi

#!/bin/env bash
#Coded By Djawed Hammadi
#FACEBOOK:www.facebook.com/djawedx23
#Copyright@2020
cd ..
ahmmalaf= cd xline/ahmyth/mine/king/ahmyth
ahminf=$(cat IOSocket.java | grep -o -P '(?<=http).*(?=model)' | cut -d ':' -f2- | tr -d "//?")
if [[ $ahminf == "" ]];then
printf ""
elif [[ $ahminf != "" ]];then
printf "\033[1;33mHOST_AND_PORT \033[1;37m-->\033[0;32m Found : \033[1;37m($ahminf)\n\n"
fi

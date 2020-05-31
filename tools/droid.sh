#!/bin/env bash
#Coded By Djawed Hammadi
#FACEBOOK:www.facebook.com/djawedx23
#Copyright@2020
cd ..
dromalaf= cd xline/smali/net/droidjack/server
sed 's+    const-string v0, +'@'+g' br.smali > djawed.txt
droidhost=$(grep "@" djawed.txt )
if [[ $droidhost == "" ]];then
printf ""
elif [[ $droidhost != "" ]];then
printf "\033[1;33mDROIDHOST \033[1;37m-->\033[0;32m Found : \033[1;37m($droidhost)\n\n"
fi


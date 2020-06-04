#!/bin/env bash
#Coded By Djawed Hammadi
#FACEBOOK:www.facebook.com/djawedx23
#Copyright@2020
#-------------------- SPYMAX : ------------------
#host :
cd ..
go= cd xline/res/values
spyhost=$(grep '"i"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $spyhost == "" ]];then
printf ""
elif [[ $spyhost != "" ]];then
printf "\033[1;33mSPYHOST \033[1;37m-->\033[0;32m Found : \033[1;37m($spyhost)\n\n"
fi
#victim : 
spyvictim=$(grep '"n"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $spyvictim == "" ]];then
printf "\n"
elif [[ $spyvictim != "" ]];then
printf "\033[1;33mSPYVICTIM \033[1;37m-->\033[0;32m Found : \033[1;37m($spyvictim)\n\n"
fi 
#app_name : 
spyapp=$(grep '"a"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $spyapp == "" ]];then
printf ""
elif [[ $spyapp != "" ]];then
printf "\033[1;33mAPP_Name \033[1;37m-->\033[0;32m Found : \033[1;37m($spyapp)\n\n"
fi
#---------------- SPYNOTE : ----------------------
#host :
spnhost=$(grep '"h"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $spnhost == "" ]];then
printf ""
elif [[ $spnhost != "" ]];then
printf "\033[1;33mSPYNHOST \033[1;37m-->\033[0;32m Found : \033[1;37m($spnhost)\n\n"
fi 
#app_name : 
spnapp=$(grep '"app_name"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $spnapp == "" ]];then
printf ""
elif [[ $spnapp != "" ]];then
printf "\033[1;33mAPP_Name \033[1;37m-->\033[0;32m Found : \033[1;37m($spnapp)\n\n"
fi 
#service_name : 
spnservice=$(grep '"s"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $spnservice == "" ]];then
printf ""
elif [[ $spnservice != "" ]];then
printf "\033[1;33mSPYNSERVICE \033[1;37m-->\033[0;32m Found : \033[1;37m($spnservice)\n\n"
fi
#-------------- MOBIHOK : -----------------------
#host : 
mobihost=$(grep '"abcd00"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $mobihost == "" ]];then
printf ""
elif [[ $mobihost != "" ]];then
printf "\033[1;33mMOBIHOST \033[1;37m-->\033[0;32m Found : \033[1;37m($mobihost)\n\n"
fi
#port : 
mobiport=$(grep '"abcd01"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $mobiport == "" ]];then
printf ""
elif [[ $mobiport != "" ]];then
printf "\033[1;33mMOBIPORT \033[1;37m-->\033[0;32m Found : \033[1;37m($mobiport)\n\n"
fi
#service_name : 
mobiser=$(grep '"abcd03"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $mobiser == "" ]];then
printf ""
elif [[ $mobiser != "" ]];then
printf "\033[1;33mMOBISERVICE \033[1;37m-->\033[0;32m Found : \033[1;37m($mobiser)\n\n"
fi 
#version : 
mobiver=$(grep '"abcd05"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $mobiver == "" ]];then
printf ""
elif [[ $mobiver != "" ]];then
printf "\033[1;33mMOBIVERSION \033[1;37m-->\033[0;32m Found : \033[1;37m($mobiver)\n\n"
fi 
#spymax_port : 
spport=$(grep '"p"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $spport == "" ]];then
printf ""
elif [[ $spport != "" ]];then
printf "\033[1;33mPORT \033[1;37m-->\033[0;32m Found : \033[1;37m($spport)\n"
fi

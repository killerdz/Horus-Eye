#!/bin/env bash
#Coded By : Djawed Hammadi
#FB : https://www.facebook.com/xline.dz
#Github : https://github.com/Djawed-Hammadi
#Copyright@2020
#Stealing codes does not make you a programmer (;
#Lets_Start
#----------
#banner : 
python3 banner.py
#check apktool :
check() { 
apktool=`which apktool`
if [[ "$?" == "0" ]];then
sleep 2 
printf "\033[0;32m[#]\033[1;37m Apktool Already Installed .. \n"
else 
printf "\033[0;32m[#]\033[1;37mApktool Note Found In Your System (;\n"
printf "\033[1;33mInstalling It :\n"
apt-get install apktool > /dev/null;
sleep 3 
printf "\033[0;32mDone..\n"
sleep 5 
clear
fi
if [[ -e xline ]]; then
rm -rf xline
fi
}
#Code :
debug() {
printf "\n" 
printf "\033[1;37mEnter The Payload You Want To Scan It :"
read payload
printf "\n" 
if [[ $payload == "" ]];then
printf "\033[0;32mInvailed Option ...Restart"
bash Horus.sh
elif [[ $payload != "" ]];then
printf "\033[0;32m[#] Start Debuging ...\n"
printf "\n"
apktool d $payload -o xline > /dev/null;
printf "\n\n"
fi
}
scanner () {
printf "\033[1;37mDo You Want To Scan Payload [Y/N] : "
read choice
printf "\n"
if [[ $choice == "N" ]] || [[ $choice == "n" ]] || [[ $choice == "no" ]] || [[ $choice == "No" ]];then
printf "\033[1;37mOK (; \n"
exit 0 
#exit
elif [[ $choice == "Y" ]] || [[ $choice == "y" ]] || [[ $choice == "YES" ]] || [[ $choice == "yes" ]];then
open= cd xline/res/values/
sleep 3 
spymax=$(grep '"a"' strings.xml)
if [[ $spymax == "" ]];then
sleep 5 
printf "\033[1;33mSPYMAX \033[1;37m-->\033[0;31m Not Found \n\n"
elif [[ $spymax != "" ]];then
printf "\\033[1;33mSPYMAX \033[1;37m-->\033[0;32m Found \n\n"
fi
spynote=$(grep '"MER"' strings.xml)
if [[ $spynote == "" ]];then
printf "\033[1;33mSPYNOTE \033[1;37m-->\033[0;31m Not Found \n\n"
elif [[ $spynote != "" ]];then
printf "\033[1;33mSPYNOTE \033[1;37m-->\033[0;32m Found \n\n"
fi
mobihok=$(grep '"abcd00"' strings.xml)
if [[ $mobihok == "" ]];then
printf "\033[1;33mMOBIHOK \033[1;37m-->\033[0;31m Not Found \n\n"
elif [[ $mobihok != "" ]];then
printf "\033[1;33mMOBIHOK \033[1;37m-->\033[0;32m Found \n\n"
fi
else
printf "\033[1;33mAre You Drinking There Is No More Then 2 Choices :(\n\n"
exit 0
#exit
fi
}
#Func
informations() {
printf "\033[1;37mDo You Want To Get Payload Informations [Y/N] : "
read informa
printf "\n"
if [[ $informa == "N" ]] || [[ $informa == "n" ]] || [[ $informa == "no" ]] || [[ $informa == "No" ]];then
sleep 5 
printf "\n"
printf "\033[1;37mOK (;\n"
exit 0 
#exit
elif [[ $informa == "Y" ]] || [[ $informa == "y" ]] || [[ $informa == "YES" ]] || [[ $informa == "yes" ]];then
sleep 5 
##
#-------------------- SPYMAX : ------------------
#host : 
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
printf "\033[1;33mSPYNAPP \033[1;37m-->\033[0;32m Found : \033[1;37m($spnapp)\n\n"
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
#spynote_and_spymax_port : 
spport=$(grep '"p"' strings.xml | awk -F">" '{print $2}' | awk -F"<" '{print $1}')
if [[ $spport == "" ]];then
printf ""
elif [[ $spport != "" ]];then
printf "\033[1;33mPORT \033[1;37m-->\033[0;32m Found : \033[1;37m($spport)\n\n"
fi
else
printf "\033[1;33mAre You Drinking There Is No More Then 2 Choices :(\n\n"
exit 0 
#exit
fi
#end
}
infocode () {
#ipCode
if [[ -e xline.log ]]; then
rm -rf xline.log
fi
printf "\033[1;37mEnter \033[1;33mIp Ex : [401.101.0.0] : "
read ip
printf "\n"
printf "\033[1;37mWait Please To Get \033[0;31mSome_Informations : "
printf "\n\n"
sleep 5 
iptracker=$(curl -s -L "www.ip-tracker.org/locator/ip-lookup.php?ip=$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > xline.log)
continent=$(grep -o 'Continent.*' xline.log | head -n1 | cut -d ">" -f3 | cut -d "<" -f1)
if [[ $continent != "" ]]; then
printf "\033[1;33mContinent : \033[0;32m Found : \033[1;37m ($continent)\n\n" 
elif [[ $continent == "" ]]; then
printf "\033[1;33mContinent : \033[0;31m Not Found \n\n"
fi
hostnameip=$(grep  -o "</td></tr><tr><th>Hostname:.*" xline.log | cut -d "<" -f7 | cut -d ">" -f2)
if [[ $hostnameip != "" ]]; then
printf "\033[1;33mHostname :\033[0;32m Found : \033[1;37m ($hostnameip)\n\n" 
elif [[ $hostnameip == "" ]]; then 
printf "\033[1;33mHostname :\033[0;31m Not Found\n\n"
fi 
reverse_dns=$(grep -a "</td></tr><tr><th>Hostname:.*" xline.log | cut -d "<" -f1)
if [[ $reverse_dns != "" ]]; then
printf "\033[1;33mReverse_Dns : \033[0;32m Found : \033[1;37m ($reverse_dns)\n\n" 
elif [[ $reverse_dns == "" ]]; then 
printf "\033[1;33mRerverse_Dns : \033[0;31m Not Found\n\n"
fi 
country=$(grep -o 'Country:.*' xline.log | cut -d ">" -f3 | cut -d "&" -f1)
if [[ $country != "" ]]; then
printf "\033[1;33mCountry : \033[0;32m Found : \033[1;37m ($country)\n\n" 
elif [[ $country == "" ]] ; then 
printf "\033[1;33mCountry : \033[0;31m Not Found\n\n"
fi 
state=$(grep -o "tracking lessimpt.*" xline.log | cut -d "<" -f1 | cut -d ">" -f2)
if [[ $state != "" ]]; then
printf "\033[1;33mState : \033[0;32m Found : \033[1;37m ($state)\n\n" 
elif [[ $state == "" ]];then
printf "\033[1;33mState : \033[0;31m Not Found\n\n"
fi 
city=$(grep -o "City Location:.*" xline.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $city != "" ]]; then
printf "\033[1;33mCity : \033[0;32m Found : \033[1;37m ($city)\n\n" 
elif [[ $city == "" ]]; then
printf "\033[1;33mCity : \033[0;31m Not Found\n\n"
fi 
isp=$(grep -o "ISP:.*" xline.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $isp != "" ]]; then
printf "\033[1;33mISP : \033[0;32m Found : \033[1;37m ($isp)\n\n" 
elif [[ $isp == "" ]]; then 
printf "\033[1;33mISP : \033[0;31m Not Found\n"
fi 
as_number=$(grep -o "AS Number:.*" xline.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $as_number != "" ]]; then
printf "\033[1;33mAs_Number : \033[0;32m Found : \033[1;37m ($as_number)\n\n" 
elif [[ $as_number == "" ]];then
printf "\033[1;33mAs Number : \033[0;31m Not Found\n"
fi 
ip_speed=$(grep -o "IP Address Speed:.*" xline.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $ip_speed != "" ]]; then
printf "\033[1;33mIp_Speed : \033[0;32m Found : \033[1;37m ($ip_speed)\n\n" 
elif [[ $ip_speed == "" ]] ; then 
printf "\033[1;33mIp_Speed : \033[0;31m Not Found\n"
fi
ip_currency=$(grep -o "IP Currency:.*" xline.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $ip_currency != "" ]]; then
printf "\033[1;33mIp_Currency : \033[0;32m Found : \033[1;37m ($ip_currency)\n\n" 
elif [[ $ip_currency == "" ]]; then 
printf "\033[1;33mIp_Currency : \033[0;32m Not Found\n\n"
fi 
#End_ip_code
}
ipinfo() {
printf "\033[1;37mDo You Want To Get IP Informations [Y/N] : "
read ipinfo
printf "\n"
if [[ $ipinfo == "N" ]] || [[ $ipinfo == "n" ]] || [[ $ipinfo == "no" ]] || [[ $ipinfo == "No" ]];then
sleep 5 
printf "\033[1;37mOK (;\n"
exit 0
#exit
elif [[ $ipinfo == "Y" ]] || [[ $ipinfo == "y" ]] || [[ $ipinfo == "YES" ]] || [[ $ipinfo == "yes" ]];then
printf "\033[0;32m[\033[1;37m1\033[0;32m] \033[1;37m->> \033[1;33mHOST \n\n"
printf "\033[0;32m[\033[1;37m2\033[0;32m] \033[1;37m->> \033[1;33mIP\n\n"
printf "\033[1;37mPlease Enter Your Choice : "
read kk
if [[ $kk == "1" ]];then
cd ../../..
printf "\n"
dido= chmod +x reverse.py && python3 reverse.py
printf "\n"
infocode
elif [[ $kk == "2" ]];then
printf "\n"
infocode
else 
printf "No Option Are You Drinking :( \n"
exit 0
fi 
else 
printf "\033[1;33mAre You Drinking There Is No More Then 2 Choices :(\n\n"
exit 0 
fi
}
repet() {
printf "\033[0;32mDo You Have Another Payload !! [Y/N] : "
read have 
if [[ $have == "N" ]] || [[ $have == "n" ]] || [[ $have == "no" ]] || [[ $have == "No" ]];then
printf "\n"
printf "\033[1;37mOk ! See You And Thanks For Using This Tool <3 "
elif [[ $ipinfo == "Y" ]] || [[ $ipinfo == "y" ]] || [[ $ipinfo == "YES" ]] || [[ $ipinfo == "yes" ]];then
printf "\n"
printf "\033[1;37mOk .. Restart !!"
sleep 5
cd ../../..
bash Horus.sh
else 
printf "\n"
printf "No Option Are You Drinking :( \n"
exit 0 
fi
}
check
debug
scanner
informations
ipinfo
repet
#End




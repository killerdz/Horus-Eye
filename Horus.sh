#!/bin/env bash
#Coded By : Djawed Hammadi
#FB : https://www.facebook.com/xline.dz
#Github : https://github.com/Djawed-Hammadi
#Devloped To Termux by : Kira dz
#FB : https://www.facebook.com/khalid.dz.589
#Github : https://github.com/killerdz
#MADE IN : 13 xD
#Thx To Lexiie For the JADx TooL
#Copyright@2020
#Stealing codes does not make you a programmer (;
#Lets_Start
#----------
#banner : 
python banner.py
#check JadX :
check() {
if ! which jadx > /dev/null 
then 
printf "\033[0;32m[#]\033[1;37mJadX Not Found In Your System (;\n"
printf "\033[1;33mInstalling It :\n"
git clone https://github.com/Lexiie/Termux-Jadx.git
sleep 4
cd Termux-Jadx
dpkg -i ./jadx-0.6.1_all.deb
cd ..
rm -rf Termux-Jadx
sleep 3
clear
else
printf "\033[0;32m[#]\033[1;37mJadX Already Installed .. \n"
printf "\033[0;32mDone..\n"
fi
clear
if [[ -e xline ]]; then
rm -rf xline
fi
mkdir xline
}
#Code :
debug() {
printf "\n" 
printf "\033[1;37mEnter The Payload You Want To Scan It :"
read payload
printf "\n" 
if [ "$payload" == "" ] || [ ! -f $payload ]
then
printf "\033[0;32mInvailed Option ...Restart\n"
sleep 3
clear
debug
elif [[ $payload != "" ]];then
printf "\033[0;32m[#] Start Debuging ...\n"
printf "\n"
k=$(jadx -s $payload -d xline)
printf "\n\n"
fi
}
scanner() {
printf "\033[1;37mDo You Want To Scan Payload [Y/N] : "
read choice
printf "\n"
if [[ $choice == "N" ]] || [[ $choice == "n" ]] || [[ $choice == "no" ]] || [[ $choice == "No" ]];then
printf "\033[1;37mOK (; \n"
exit 0 
#exit
elif [[ $choice == "Y" ]] || [[ $choice == "y" ]] || [[ $choice == "YES" ]] || [[ $choice == "yes" ]];then
sleep 3
#metasploit
printf "\n"
firs= cd xline
metasploit=$(grep '"metasploit"' AndroidManifest.xml)
if [[ $metasploit == "" ]];then
printf "\033[1;33mMETASPLOIT \033[1;37m-->\033[0;31m Not Found \n\n"
elif [[ $metasploit != "" ]];then
printf "\033[1;33mMETAPLOIT \033[1;37m-->\033[0;32m Found \n\n"
cp $payload .
fi
#droidjack
droid=$(grep '"net.droidjack.server"' AndroidManifest.xml)
if [[ $droid == "" ]];then
printf "\033[1;33mDROIDJACK \033[1;37m-->\033[0;31m Not Found \n\n"
elif [[ $droid != "" ]];then
printf "\033[1;33mDROIDJACK \033[1;37m-->\033[0;32m Found \n\n"
fi
#ahm
ahm=$(grep '"ahmyth.mine.king.ahmyth.MainActivity"' AndroidManifest.xml)
if [[ $ahm == "" ]];then
printf "\033[1;33mAHMYTH \033[1;37m-->\033[0;31m Not Found \n\n"
elif [[ $ahm != "" ]];then
printf "\033[1;33mAHMYTH \033[1;37m-->\033[0;32m Found \n\n"
fi 
open= cd res/values/
spymax=$(grep '"a"' strings.xml)	
if [[ $spymax == "" ]];then
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
##
ask() {
printf "\033[1;37mDo You Want To Get Informations [Y/N] : "
read want 
printf "\n"
if [[ $want == "N" ]] || [[ $want == "n" ]] || [[ $want == "no" ]] || [[ $want == "No" ]];then
printf "\033[1;37mOK.. Se You (:\n"
exit 0 
elif [[ $want == "Y" ]] || [[ $want == "y" ]] || [[ $want == "YES" ]] || [[ $want == "yes" ]];then
printf "\033[0;32m[\033[1;37m1\033[0;32m] \033[1;37m-->> \033[1;33mSPYMAX OR SPYNOTE OR MOBIHOK\n\n"
printf "\033[0;32m[\033[1;37m2\033[0;32m] \033[1;37m-->> \033[1;33mDROIDJACK\n\n"
printf "\033[0;32m[\033[1;37m3\033[0;32m] \033[1;37m-->> \033[1;33mAHMYTH\n\n"
printf "\033[0;32m[\033[1;37m4\033[0;32m] \033[1;37m-->> \033[1;33mMETASPLOIT\n\n"
printf "\033[1;37mEnter Payload Type According To Scan Result : "
read accor
printf "\n"
if [[ $accor == "1" ]];then
cd ../../..
spy= cd tools
chmod +x spy.sh
bash spy.sh
elif [[ $accor == "2" ]];then
cd ../../..
rm -rf xline
jadx -r $payload -d xline
dro= cd tools
chmod +x droid.sh
bash droid.sh
elif [[ $accor == "3" ]];then
cd ../../..
rm -rf xline
jadx -r $payload -d xline
ahm= cd tools
chmod +x ahmy.sh
bash ahmy.sh
elif [[ $accor == "4" ]];then
cd ../../..
met= cd tools
chmod +x meta.sh
bash meta.sh
fi
fi
}
#end
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
cd ..
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
sleep 3
clear
cd ../
sleep 2
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
ask
ipinfo
repet
#End




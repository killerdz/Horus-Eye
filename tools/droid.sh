 #!/bin/env bash
#Coded By Djawed Hammadi
#FACEBOOK:www.facebook.com/djawedx23
#Copyright@2020
cd ../
dromalaf= cd xline/net/droidjack/server
droidhost=$(cat br.java | grep 'a = ' | tr -d "protected static String=;")
droidport=$(cat br.java | grep 'b = ' | tr -d "protected static int b = ; ")
if [[ $droidhost == "" ]];then
printf ""
elif [[ $droidhost != "" ]];then
printf "\033[1;33mDROIDHOST \033[1;37m-->\033[0;32m Found : \033[1;37m($droidhost)\n\n"
printf "\033[1;33mDROIDPORT \033[1;37m-->\033[0;32m Found : \033[1;37m($droidport)\n\n"
fi
exit



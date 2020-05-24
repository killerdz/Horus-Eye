#!/bin/python3 
from time import sleep 
from socket import gethostbyname
host = input("\033[1;37mPlease Enter The Host : ")
sleep(5)
print("\n" + "Ip For",host," Is : \033[1;33m",gethostbyname(host))


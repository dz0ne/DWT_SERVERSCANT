#!/bin/bash

#Colors
cyan='\e[0;36m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
#Check root exist
[[ `id -u` -eq 0 ]] > /dev/null 2>&1 || { echo  $red "You must be root to run the script"; exit 1; }
echo " ______   _______ _________ _______  _______ _________ _______  _______   ";
echo "(  
echo "| (__/  ) /   (_/\|\_)  )  | (____/\| (____/\   | |   | (____/\| ) \ \__  ";
echo "(______/ (_______/(____/   (_______/(_______/   )_(   (_______/|/   \__/v2.0 ";
echo "                      Setup Script for sscan v2.0 
echo -e $green by fouad ghaoui  "       
echo -e $green "[ ! ] Moving sscan folder "
mkdir /usr/share/sscan
cp sscan.py /usr/share/sscan
echo -e $blue "[ ✔ ]Done"
echo "installing requirements...."
pip install -r requirements.txt
echo -e $yellow "[ ! ]  Creating shortcut command sscan"
echo "#!/bin/sh" >> /usr/bin/sscan
echo "cd /usr/share/sscan" >> /usr/bin/sscan
echo "exec python sscan.py \"\$@\"" >> /usr/bin/sscan
chmod +x /usr/bin/sscan
echo -e $green ""
echo "------------------------------------" 
echo "| [ ✔ ]installation completed[ ✔ ] |" 
echo "------------------------------------" 
echo
echo -e $green "#####################################"
echo -e $blue "|Now Just Type In Terminal (sscan)|"
echo -e $green "#####################################"
exit

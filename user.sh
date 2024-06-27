# bin/bash
# by mr.patrix
# team cyber ghost01
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
NC='\e[0m'

R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"

clear

echo -e " ${GREEN}╭━━━┳━━━┳━━━┳╮╱╭╮╭╮╱╱╭━━┳━╮╱╭┳╮╱╭┳━╮╭━╮
┃╭━╮┃╭━╮┃╭━╮┃┃╱┃┃┃┃╱╱╰┫┣┫┃╰╮┃┃┃╱┃┣╮╰╯╭╯
┃┃╱┃┃╰━╯┃┃╱╰┫╰━╯┃┃┃╱╱╱┃┃┃╭╮╰╯┃┃╱┃┃╰╮╭╯
┃╰━╯┃╭╮╭┫┃╱╭┫╭━╮┃┃┃╱╭╮┃┃┃┃╰╮┃┃┃╱┃┃╭╯╰╮
┃╭━╮┃┃┃╰┫╰━╯┃┃╱┃┃┃╰━╯┣┫┣┫┃╱┃┃┃╰━╯┣╯╭╮╰╮
╰╯╱╰┻╯╰━┻━━━┻╯╱╰╯╰━━━┻━━┻╯╱╰━┻━━━┻━╯╰━╯"

echo -e "\n${R}[${W}-${R}]${C} Installing Sudo...${W}${NC}"
pacman -Syu -y
pacman -S sudo git -y
pacman -S wget apt-utils locales-all dialog tzdata -y
echo -e "\n${R}[${W}-${R}]${G} Sudo Successfully Installed!${W}${NC}"

sleep 2

rm -rf .bashrc
wget https://raw.githubusercontent.com/PATRIX-CYBERGHOST01/Arch-xfce/main/.bashrc

clear

echo -e " ${GREEN}╭━━━┳━━━┳━━━┳╮╱╭╮╭╮╱╱╭━━┳━╮╱╭┳╮╱╭┳━╮╭━╮
┃╭━╮┃╭━╮┃╭━╮┃┃╱┃┃┃┃╱╱╰┫┣┫┃╰╮┃┃┃╱┃┣╮╰╯╭╯
┃┃╱┃┃╰━╯┃┃╱╰┫╰━╯┃┃┃╱╱╱┃┃┃╭╮╰╯┃┃╱┃┃╰╮╭╯
┃╰━╯┃╭╮╭┫┃╱╭┫╭━╮┃┃┃╱╭╮┃┃┃┃╰╮┃┃┃╱┃┃╭╯╰╮
┃╭━╮┃┃┃╰┫╰━╯┃┃╱┃┃┃╰━╯┣┫┣┫┃╱┃┃┃╰━╯┣╯╭╮╰╮
╰╯╱╰┻╯╰━┻━━━┻╯╱╰╯╰━━━┻━━┻╯╱╰━┻━━━┻━╯╰━╯"


read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Input Username [Lowercase] : \e[0m\e[1;96m\en' user
    echo -e "${W}"
    read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Input Password : \e[0m\e[1;96m\en' pass
    echo -e "${W}"
    useradd -m -s $(which bash) ${user}
    usermod -aG sudo ${user}
    echo "${user}:${pass}" | chpasswd
    echo "$user ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
    echo "proot-distro login --user $user archlinux --bind /dev/null:/proc/sys/kernel/cap_last_last --shared-tmp --fix-low-ports" > /data/data/com.termux/files/usr/bin/arch
    chmod +x /data/data/com.termux/files/usr/bin/arch
    
    wget https://raw.githubusercontent.com/PATRIX-CYBERGHOST01/Arch-xfce/main/xfce.sh
        mv -vf gui.sh /home/$user/xfce.sh
        chmod +x /home/$user/xfce.sh
        
        clear
        
    echo
    echo -e "\n${R} [${W}-${R}]${G} Restart your Termux & Type ${C}arch"${W}
    echo -e "\n${R} [${W}-${R}]${G} Then Type ${C}sudo bash xfce.sh "${W}
    echo

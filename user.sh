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
pacman -Syu --noconfirm
pacman -S unzip --noconfirm
pacman -S neofetch --noconfirm
pacman -S sudo git --noconfirm
pacman -S wget apt-utils locales-all dialog tzdata --noconfirm
echo -e "\n${R}[${W}-${R}]${G} Sudo Successfully Installed!${W}${NC}"

sleep 2

rm -rf .bashrc

clear
echo -e '    .aMMMb  dMMMMb  .aMMMb  dMP dMP         dMP     dMP dMMMMb  dMP dM>
   dMP"dMP dMP.dMP dMP"VMP dMP dMP         dMP     amr dMP dMP dMP dMP dMK.dMP
  dMMMMMP dMMMMK" dMP     dMMMMMP         dMP     dMP dMP dMP dMP dMP .dMMMK"
 dMP dMP dMP"AMF dMP.aMP dMP dMP         dMP     dMP dMP dMP dMP.aMP dMP"AMF
dMP dMP dMP dMP  VMMMP" dMP dMP         dMMMMMP dMP dMP dMP  VMMMP" dMP dMP
                                                                                '
echo ""
echo -e "${GREEN}[+] ${YELLOW}WELCOME NEW USER ARCHLINUX ,Please enter your new
name and password !"

read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Input Username [Lowercase] : \e[0m\e[1;96m\en' user
    echo -e "${W}"
    read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Input Password : \e[0m\e[1;96m\en' pass
    echo -e "${W}"
    useradd -m -s $(which bash) ${user}
    usermod -aG sudo ${user}
    echo "${user}:${pass}" | chpasswd
    echo "$user ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
    echo 'pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1
    proot-distro login --user $user archlinux --bind
    /dev/null:/proc/sys/kernel/cap_last_last --shared-tmp --fix-low-ports' >
    /data/data/com.termux/files/usr/bin/arch
    chmod +x /data/data/com.termux/files/usr/bin/arch
    echo "export USER=$user
export HOME=/home/$user

vncserver -name remote-desktop :1" > /usr/local/bin/vncserver-start
    chmod +x /usr/local/bin/vncserver-start
    echo "export USER=$user
export HOME=/home/$user

vncserver -kill :1
rm -rf /root/.vnc/localhost:1.pid
rm -rf /tmp/.X1-lock
rm -rf /tmp/.X11-unix/X1" > /usr/local/bin/vncserver-stop
    chmod +x /usr/local/bin/vncserver-stop
    
    wget https://raw.githubusercontent.com/PATRIX-CYBERGHOST01/Arch-xfce/main/xfce.sh
        mv -vf xfce.sh /home/$user/xfce.sh
        chmod +x /home/$user/xfce.sh
        rm -rf /home/$user/.bashrc
    wget https://github.com/PATRIX-CYBERGHOST01/Arch-xfce/raw/main/bashrc.zip
        unzip bashrc.zip
        mv -vf .bashrc /home/$user/.bashrc
    wget https://raw.githubusercontent.com/PATRIX-CYBERGHOST01/Arch-xfce/main/.bashrc
        clear
        
    echo
    echo -e "\n${R} [${W}-${R}]${G} Restart your Termux & Type ${C}arch"${W}
    echo -e "\n${R} [${W}-${R}]${G} Then Type ${C}sudo bash xfce.sh / sudo ./xfce.sh "${W}
    echo
rm -rf user.sh

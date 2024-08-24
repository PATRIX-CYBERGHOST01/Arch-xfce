#creator by patrix
#instaling arch from termux
#team CYBERGHOST01
#black hat indonesia
#don't copy my script fuck you

RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
NC='\e[0m'
clear
CURR_DIR=$(realpath "$(dirname "$BASH_SOURCE")")
UBUNTU_DIR="$PREFIX/var/lib/proot-distro/installed-rootfs/archlinux"

echo -e '${BLUE}    .aMMMb  dMMMMb  .aMMMb  dMP dMP         dMP     dMP dMMMMb  dMP dM>
   dMP"dMP dMP.dMP dMP"VMP dMP dMP         dMP     amr dMP dMP dMP dMP dMK.dMP
  dMMMMMP dMMMMK" dMP     dMMMMMP         dMP     dMP dMP dMP dMP dMP .dMMMK"
 dMP dMP dMP"AMF dMP.aMP dMP dMP         dMP     dMP dMP dMP dMP.aMP dMP"AMF
dMP dMP dMP dMP  VMMMP" dMP dMP         dMMMMMP dMP dMP dMP  VMMMP" dMP dMP
                                                                                '
echo ""
echo -e "${GREEN}install archlinux"
echo "by mr.patrix"
echo "Download size requires 250mb and after extraction requires 1gb of space"
echo ""
read -p "Do you want to continue? (y/n): " pilihan

if [[ "$pilihan" == "y" ]]; then
echo ""
echo -e " ${YELLOW}[-] ${GREEN}installing proot..."

sleep 2
pkg install curl -y
pkg update -y
pkg install proot proot-distro -y
pkg install root-repo x11-repo -y
echo ""
echo -e " ${YELLOW} [-] ${GREEN}alling pulseaudio..."
sleep 2
pkg install proot pulseaudio -y
termux-setup-storage
echo ""
echo -e "${YELLOW}[-] ${GREEN}installing arch linux... "
sleep 2

proot-distro install archlinux

echo 'pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1
proot-distro login archlinuxq ' > /data/data/com.termux/files/usr/bin/arch
    chmod +x /data/data/com.termux/files/usr/bin/arch
    
	
sleep 2

clear
#!/bin/bash

# Definisikan warna
YELLOW='\033[1;33m'
NC='\033[0m' # No Color
CYAN='\033[1;36m'

    clear
    echo -e "${YELLOW}[-] ${GREEN}Upgrading and update Arch Linux...${NC}"
    sleep 2
echo -e "${GREEN} [!] ${YELLOW}Recommend choose dbus no 2 support nethunterkex"
proot-distro login archlinux -- pacman -Syu 

wget https://raw.githubusercontent.com/PATRIX-CYBERGHOST01/Arch-xfce/main/user.sh
		downloader "$CURR_DIR/user.sh" "https://raw.githubusercontent.com/PATRIX-CYBERGHOST01/Arch-xfce/blob/main/user.sh"
		mv -f "$CURR_DIR/user.sh" "$UBUNTU_DIR/root/user.sh"
		
	chmod +x $UBUNTU_DIR/root/user.sh

	termux-reload-settings

clear

sleep 2

echo -e "${CYAN} ##############################################"
echo -e "${GREEN}╭━━━┳━━━┳━━━┳╮╱╭╮╭╮╱╱╭━━┳━╮╱╭┳╮╱╭┳━╮╭━╮
┃╭━╮┃╭━╮┃╭━╮┃┃╱┃┃┃┃╱╱╰┫┣┫┃╰╮┃┃┃╱┃┣╮╰╯╭╯
┃┃╱┃┃╰━╯┃┃╱╰┫╰━╯┃┃┃╱╱╱┃┃┃╭╮╰╯┃┃╱┃┃╰╮╭╯
┃╰━╯┃╭╮╭┫┃╱╭┫╭━╮┃┃┃╱╭╮┃┃┃┃╰╮┃┃┃╱┃┃╭╯╰╮
┃╭━╮┃┃┃╰┫╰━╯┃┃╱┃┃┃╰━╯┣┫┣┫┃╱┃┃┃╰━╯┣╯╭╮╰╮
╰╯╱╰┻╯╰━┻━━━┻╯╱╰╯╰━━━┻━━┻╯╱╰━┻━━━┻━╯╰━╯"
echo -e "${CYAN} ##############################################"
echo ""
echo ""

R='\033[0;31m'  # Red
W='\033[1;37m'  # White
G='\033[0;32m'  # Green
C='\033[0;36m'  # Cyan
NC='\033[0m'    # No Color

echo -e "${R}[${W}-${R}]${G} archlinux (CLI) is now Installed on your Termux${NC}"
echo -e "${R}[${W}-${R}]${G} Restart your Termux to Prevent Some Issues.${NC}"
echo -e "${R}[${W}-${R}]${G} Type ${C}arch${G} to run archlinux CLI.${NC}"
echo -e "${R}[${W}-${R}]${G} If you Want to Use archlinux in GUI MODE then,${NC}"
echo -e "${R}[${W}-${R}]${G} Run ${C}arch${G} first & then type ${C}bash user.sh${W}${NC}"
rm -rf arch.sh
  elif [[ "$pilihan" == "n" ]]; then
    exit 1
else
    echo "Pilihan tidak valid. Harap pilih 'y' atau 'n'."
fi
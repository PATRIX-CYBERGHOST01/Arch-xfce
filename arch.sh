RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
NC='\e[0m'
clear
CURR_DIR=$(realpath "$(dirname "$BASH_SOURCE")")
UBUNTU_DIR="$PREFIX/var/lib/proot-distro/installed-rootfs/archlinux"

echo -e " ${GREEN}╭━━━┳━━━┳━━━┳╮╱╭╮╭╮╱╱╭━━┳━╮╱╭┳╮╱╭┳━╮╭━╮
┃╭━╮┃╭━╮┃╭━╮┃┃╱┃┃┃┃╱╱╰┫┣┫┃╰╮┃┃┃╱┃┣╮╰╯╭╯
┃┃╱┃┃╰━╯┃┃╱╰┫╰━╯┃┃┃╱╱╱┃┃┃╭╮╰╯┃┃╱┃┃╰╮╭╯
┃╰━╯┃╭╮╭┫┃╱╭┫╭━╮┃┃┃╱╭╮┃┃┃┃╰╮┃┃┃╱┃┃╭╯╰╮
┃╭━╮┃┃┃╰┫╰━╯┃┃╱┃┃┃╰━╯┣┫┣┫┃╱┃┃┃╰━╯┣╯╭╮╰╮
╰╯╱╰┻╯╰━┻━━━┻╯╱╰╯╰━━━┻━━┻╯╱╰━┻━━━┻━╯╰━╯"
echo -e "${BLUE}#instal archlinux"
echo "#by mr.patrix"
echo "#archlinux ukuran 200mb"
echo ""
echo ""
echo -e " ${YELLOW} installing proot..."

sleep 2
pkg install curl -y
pkg update -y
pkg install proot proot-distro -y
pkg install root-repo x11-repo -y
echo ""
echo -e " ${YELLOW} installing pulseaudio..."

sleep 2

pkg install proot pulseaudio -y
termux-setup-storage
echo ""
echo -e "${YELLOW}installing arch linux... "
sleep 2

proot-distro install archlinux

echo "proot-distro login archlinux " > /data/data/com.termux/files/usr/bin/arch
    chmod +x /data/data/com.termux/files/usr/bin/arch
sleep 2

clear
#!/bin/bash

# Definisikan warna
YELLOW='\033[1;33m'
NC='\033[0m' # No Color
CYAN='\033[1;36m'

while true; do
    clear
    echo -e "${YELLOW}Upgrading Arch Linux...${NC}"
    sleep 2

    # Menampilkan pilihan kepada pengguna
    echo -e "${CYAN}Pilih opsi untuk instalasi:${NC}"
    echo ""
    echo -e "${CYAN}1.${GREEN} dbus-broker-units (Khusus Android Tinggi)${NC}"
    echo -e "${CYAN}2.${GREEN} dbus-daemon-units (Khusus Android Rendah)${YELLOW}"
echo ""
done

echo -e "${YELLOW}Upgrade Arch Linux selesai.${NC}"

		downloader "$CURR_DIR/user.sh" "https://raw.githubusercontent.com/PATRIX-CYBERGHOST01/Arch-xfce/blob/main/user.sh"
		mv -f "$CURR_DIR/user.sh" "$UBUNTU_DIR/root/user.sh"
		
	chmod +x $UBUNTU_DIR/root/user.sh

	echo "proot-distro login ubuntu" > $PREFIX/bin/arch
	chmod +x "$PREFIX/bin/arch"
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

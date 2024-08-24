RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
NC='\e[0m'
clear

echo -e " ${GREEN}╭━━━┳━━━┳━━━┳╮╱╭╮╭╮╱╱╭━━┳━╮╱╭┳╮╱╭┳━╮╭━╮
┃╭━╮┃╭━╮┃╭━╮┃┃╱┃┃┃┃╱╱╰┫┣┫┃╰╮┃┃┃╱┃┣╮╰╯╭╯
┃┃╱┃┃╰━╯┃┃╱╰┫╰━╯┃┃┃╱╱╱┃┃┃╭╮╰╯┃┃╱┃┃╰╮╭╯
┃╰━╯┃╭╮╭┫┃╱╭┫╭━╮┃┃┃╱╭╮┃┃┃┃╰╮┃┃┃╱┃┃╭╯╰╮
┃╭━╮┃┃┃╰┫╰━╯┃┃╱┃┃┃╰━╯┣┫┣┫┃╱┃┃┃╰━╯┣╯╭╮╰╮
╰╯╱╰┻╯╰━┻━━━┻╯╱╰╯╰━━━┻━━┻╯╱╰━┻━━━┻━╯╰━╯"
echo "Installing XFCE Desktop"
echo "By mr.patrix"
echo " "
echo "Updating the system "
echo " "
echo " "
sleep 2
sudo pacman -Suuyy --noconfirm
sudo pacman -S gvfs --noconfirm

echo ""
echo -e "${GREEN}[+] ${YELLOW}INSTALLING XFCE DESKTOP FOR ARCH..."
sleep 2
sudo pacman -S xfce4 xfce4-goodies sudo --noconfirm 
sudo pacman -S tigervnc wget --noconfirm
sudo pacman -S wget git tar unzip sed --noconfirm

wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/Pacman/Manjaro/XFCE/xstartup   -P ~/.vnc/


echo " "
echo "You can now start vncserver by running vncserver-start"
echo " "
echo "It will ask you to enter a password when first time starting it."
echo " "
echo "The VNC Server will be started at 127.0.0.1:5901"
echo " "
echo "You can connect to this address with a VNC Viewer you prefer"
echo " "
echo "Connect to this address will open a window with XFCE Desktop Environment"
echo " "
echo " "
echo " "
echo "Running vncserver-start"
echo " "
echo " "
echo " "
echo "To Kill VNC Server just run vncserver-stop"
echo " "
echo " "
echo " "
wget https://github.com/YehezkielAZD/D/raw/main/wall.zip
wget https://github.com/modded-ubuntu/modded-ubuntu/releases/download/config/gtk-themes.tar.gz
wget https://github.com/YehezkielAZD/D/raw/main/01-Flat-Remix-Blue-20240201.tar.xz
wget https://github.com/YehezkielAZD/D/raw/main/Breeze-Hacked.tgz
tar -xzf Breeze-Hacked.tgz -C "/root/download/"
tar -xvzf gtk-themes.tar.gz -C "/usr/share/themes/"
tar -xf 01-Flat-Remix-Blue-20240201.tar.xz -C "/usr/share/icons/"
unzip wall.zip -d "/usr/share/backgrounds/xfce/"



echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile
wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Pacman/tigervnc-fix.sh -O ~/tigervnc-fix.sh && bash ~/tigervnc-fix.sh
sleep 2
git clone https://gitlab.xfce.org/apps/xfce4-panel-profiles.git
sudo pacman -S make base-devel cmake ninja python gtk3 --noconfirm
sudo pacman -S python-psutil
cd xfce4-panel-profiles
make
make install
sudo pacman -S breeze-gtk -noconfirm
rm -rf ~/.config/xfce4/desktop/


clear
echo -e "${GREEN}Type kex to run vncserver "
echo -e "${GREEN}To Kill VNC Server just run vncserver-stop"
rm -rf xfce.sh
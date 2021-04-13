clear
cd /tmp
echo "Celeste Pico 8 script started!"
echo "Installing Dependencies"
echo
sudo apt install --assume-yes subversion libsdl1.2-dev libsdl2-mixer-dev libsdl2-dev libsdl-mixer1.2-dev libsdl2-image-dev
sudo apt install --assume-yes libsndio*
svn export https://github.com/cobalt2727/L4T-Megascript/trunk/assets/Celeste
cd Celeste
rm -rf /$HOME/RetroPie/roms/ports/Celeste.sh
mv Celeste.sh -t /$HOME/RetroPie/roms/ports
cd ..
rm -r Celeste
echo
echo "Downloading the game"
mkdir celeste
cd celeste
wget -q https://github.com/theofficialgman/ccleste/releases/download/v1.4.0/celeste.zip
unzip celeste.zip
rm celeste.zip
chmod 777 cceleste
echo
echo "Adding to applications menu"
echo
sudo rm -f /usr/share/applications/celeste.desktop
sudo mv celeste.desktop -t /usr/share/applications
cd ..
sudo rm -rf /usr/share/celeste
sudo mv celeste -t /usr/share
echo
echo "Game installed!"
sleep 2
echo
echo "Sending you back to the main menu..."

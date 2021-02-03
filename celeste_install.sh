clear
cd
cd /tmp
echo "Celeste Pico 8 script started!"
echo "Installing Dependencies"
echo
sudo apt install --assume-yes subversion libc6 libsdl1.2debian libsdl-mixer1.2 libc6 libasound2 libc6 libpulse0 libx11-6 libxext6 libcaca0 libc6 libmikmod3 libfluidsynth1 libvorbisfile3 libflac8 libmad0 libpulse0 libdbus-1-3 libxcb1 libslang2 libncursesw5 libtinfo5 zlib1g libsdl2-2.0-0 libopenal1 libglib2.0-0 libjack-jackd2-0 libsndfile1 libreadline7 libvorbis0a libogg0 libsystemd0 libwrap0 libasyncns0 libc6 libxau6 libxdmcp6 libpcre3 libstdc++6 libgcc1 libvorbisenc2 liblzma5 liblz4-1 libgcrypt20 libc6 libbsd0 libgpg-error0
sudo apt install --assume-yes libsndio6.1
sudo apt install --assume-yes libsndio7.0
svn export https://github.com/cobalt2727/L4T-Megascript/trunk/assets/Celeste
cd Celeste
rm -rf /$HOME/RetroPie/roms/ports/Celeste.sh
mv Celeste.sh -t /$HOME/RetroPie/roms/ports
cd
rm -r Celeste
echo
echo "Downloading the game"
wget https://github.com/theofficialgman/ccleste/releases/download/v1.4.0/celeste.zip
unzip celeste.zip
rm celeste.zip
cd celeste
chmod 777 cceleste
echo
echo "Adding to applications menu"
echo
sudo rm -f /usr/share/applications/celeste.desktop
sudo mv celeste.desktop -t /usr/share/applications
cd
sudo rm -rf /usr/share/celeste
sudo mv celeste -t /usr/share
echo
echo "Game installed!"
sleep 2
echo
echo "Sending you back to the main menu..."

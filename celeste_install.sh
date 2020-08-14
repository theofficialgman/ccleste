clear
cd
echo "Celeste Pico 8 script started!"
echo "Installing Dependencies"
echo
sudo apt install libc6 libsdl1.2debian libsdl-mixer1.2 libc6 libasound2 libc6 libpulse0 libx11-6 libxext6 libcaca0 libc6 libmikmod3 libfluidsynth1 libvorbisfile3 libflac8 libmad0 libpulse0 libdbus-1-3 libxcb1 libslang2 libncursesw5 libtinfo5 zlib1g libsdl2-2.0-0 libopenal1 libglib2.0-0 libjack-jackd2-0 libsndfile1 libreadline7 libvorbis0a libogg0 libsystemd0 libwrap0 libasyncns0 libc6 libxau6 libxdmcp6 libsndio6.1 libpcre3 libstdc++6 libgcc1 libvorbisenc2 liblzma5 liblz4-1 libgcrypt20 libc6 libbsd0 libgpg-error0
echo
echo "Downloading the game"
wget https://github.com/theofficialgman/ccleste/archive/v1.04.3.zip
unzip v1.04.3.zip
rm v1.04.3.zip
mv ccleste-1.04.3 celeste
cd celeste
chmod 777 celeste-sdl12
echo
echo "Erasing files to save space..."
echo
rm winbuild.sh
rm tilemap.h
rm .gitignore
rm movie-100tas.ltm
rm Makefile.3ds
rm Makefile
rm sdl12main.c
rm celeste.c
rm celeste.h
echo
echo "Adding to applications menu"
echo
sudo mv celeste.desktop -t /usr/share/applications
cd
sudo mv celeste -t /usr/share

echo
echo "Game installed!"
sleep 2
echo
echo "Sending you back to the main menu..."

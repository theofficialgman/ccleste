clear
cd
echo "Celeste Pico 8 script started!"
echo "Downloading the game"
wget https://github.com/theofficialgman/ccleste/archive/v1.04.3.zip
unzip v1.04.3.zip
rm v1.04.3.zip
mv ccleste-1.04.3 celeste
cd celeste
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

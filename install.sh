#!/bin/bash

echo "This will set up DWM."
sleep 2s
mv dwm ..
mv dmenu ..
mv slstatus ..
mv st ..
cd ../dwm && make clean install && cd ..
cd dmenu && make clean install && cd ..
cd slstatus && make clean install && cd ..
cd st && make clean install && cd ..

mv dwm.desktop /usr/share/xsessions/
pacman -S nitrogen

echo "exec dwm &
nitrogen --restore &
slstatus &" > .profile

echo "DWM successfully installed!"

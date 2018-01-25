#!/bin/bash

#change grub background
sudo cp /home/$USER/.usr-settings/images/grubbg* /usr/share/images/desktop-base/de$
sudo cp /home/$USER/.usr-settings/images/grubbg* /usr/share/images/desktop-base/ka$

#update grub
sudo update-grub;
echo ""
echo " ======= grub background has been updated "
echo ""
sleep 2s;


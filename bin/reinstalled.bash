#!/bin/bash

#create mount point to /mnt
sudo mkdir /mnt/{data,windows,winfile};
echo "";
echo " ======= mount point created ";
echo "";
sleep 2s;

#mounting /dev/sda3, 4, 6
mountall;




#create all kaonashi's symbolic link
#ln -s /home/$USER/Documents/ /home/$USER/Desktop/Documents;
#ln -s /home/$USER/Downloads/ /home/$USER/Desktop/Downloads;
#ln -s /home/$USER/Documents/Cisco\ Academy /home/$USER/Desktop/Documents/Cisco\ Academy;
#ln -s /mnt/data/ /home/$USER/Desktop/Data;
#ln -s /mnt/winfile/ /home/$USER/Desktop/Windows\ File;
#mkdir /home/$USER/Desktop/Link;
#ln -s /mnt/winfile/Downloads/ /home/$USER/Downloads/win.Downloads;
#ln -s /mnt/winfile/Documents/ /home/$USER/Documents/win.Documents;
#ln -s /mnt/winfile/Pictures/ /home/$USER/Pictures/win.Pictures;
#ln -s /mnt/winfile/Videos/ /home/$USER/Videos/win.Videos;
#echo "";
#echo " ======= symbolic link had created ";
#echo "";
#sleep 2s;




#set grub resolution 1366x768
sudo cp /home/$USER/.usr-settings/txt/grub /usr/share/grub/default
echo ""
echo " ====== grub resolution set 1366x768 "
echo ""

#change grub backgroud
changegrubbg;




#install kali repository
sudo cp /home/$USER/.usr-settings/txt/sources.list /etc/apt/sources.list;
echo ""
echo " ======= repository has installed "
echo ""
sleep 2s;




#set available sites and hosts
sudo cp -r /home/$USER/.usr-settings/sites-available /etc/apache2/;
sudo cp /home/$USER/.usr-settings/txt/hosts /etc/;

#enabling sites
sudo service apache2 start
sudo service apache2 status

reload = "sudo service apache2 reload"

#change localhost default
sudo a2dissite 000-default.conf
$reload

sudo a2ensite 000-default.conf
$reload
sudo a2ensite hikejava.com.conf
$reload
sudo a2ensite lganesha.laravel.conf
$reload
sudo a2ensite praxis.me.conf
$reload
sudo a2ensite laravel.me.conf
$reload
sudo a2ensite perpusweb.me.conf
$reload
sudo a2ensite larasia.me.conf
$reload
sudo a2ensite l5sismaster.me.conf
$reload

echo ""
echo " ======= local sites and hosts has enables "
echo ""
sleep 2s;

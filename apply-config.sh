# Script to copy the config files in their place 

home=$HOME

cp -r .config .icons .themes .zshrc .xinitrc .p10k.zsh scripts $home
cp  nvim.desktop $home/.local/share/applications
sudo cp -r etc/* /etc/
co Meslo*.ttf $home/.local/share/fonts
cp Lake2.jpg $home/Pictures

cp powermenu.sh $home/.config/rofi/powermenu/type-2/
cp launcher.sh $home/.config/rofi/launchers/type-1/

openbox --reconfigure
killall -SIGUSR1 tint2
sudo timedatectl set-timezone America/Bogota
timedatectl set-ntp true

#sudo chmod 777 $home/*
#sudo chmod 777 $home/.config/*

echo "
*****************************************************************************
If the font or the theme is not applied, do it manually through lxappearance and Openbox configuration.
*****************************************************************************"

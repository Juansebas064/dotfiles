# Script for install the apps and packages that I use.

sudo pacman -Syu
sudo pacman -S xorg-server xorg-xinit xorg-xrandr xorg-xev xf86-input-libinput blueman wget curl base-devel openbox obconf tint2 gtk-engine-murrine xdg-user-dirs ntfs-3g rofi lightdm lightdm-webkit2-greeter xscreensaver alacritty zsh xterm networkmanager network-manager-applet pulseaudio pulseaudio-alsa alsa-utils pavucontrol playerctl pamixer thunar thunar-volman thunar-archive-plugin gvfs unzip unrar firefox telegram-desktop nitrogen gedit obs-studio xfce4-clipman-plugin dunst vlc eog xfce4-screenshooter libnotify picom neofetch htop noto-fonts-emoji discord file-roller gsimplecal gparted pulseaudio-bluetooth cups ghostscript gsfonts avahi gutenprint foomatic-db-gutenprint-ppds system-config-printer

fc-cache -v

git clone https://aur.archlinux.org/yay.git
sudo chmod 777 yay
cd yay
makepkg -si

yay -S lxappearance-obconf alacritty-themes lxpolkit-git ttf-ibm-plex psuinfo visual-studio-code-bin wired





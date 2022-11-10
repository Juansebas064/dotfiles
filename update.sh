# This script is used to update the configs made inside the repo folder

home=$HOME

cp -r $home/.config/{alacritty,gtk-3.0,nitrogen,openbox,picom,Thunar,tint2,xfce4,wired,volumeicon} ./.config 
cp $home/.config/rofi/launchers/type-1/launcher.sh ./
cp $home/.config/rofi/powermenu/type-2/powermenu.sh ./

cp -r $home/{.themes,.icons,.zshrc,.xinitrc,.p10k.zsh,scripts,.local/share/applications/nvim.desktop} ./

sudo cp -r /etc/X11/xorg.conf.d/ etc/X11

rm .config/gtk-3.0/bookmarks

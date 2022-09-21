sudo dnf upgrade

sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

dnf check-update

sudo dnf install xorg-x11-server-Xorg xorg-x11-xinit xrandr xev blueman wget curl openbox obconf tint2 xdg-user-dirs ntfs-3g rofi xscreensaver alacritty zsh xterm networkmanager network-manager-applet pulseaudio alsa-utils pavucontrol playerctl pamixer thunar thunar-volman thunar-archive-plugin gvfs unzip unrar firefox telegram-desktop nitrogen gedit xfce4-clipman-plugin eog xfce4-screenshooter libnotify picom neofetch htop google-noto-emoji-color-fonts file-roller gparted pulseaudio-module-bluetooth cups ghostscript avahi gutenprint system-config-printer discord vlc lxappearance-obconf code ibm-plex-fonts-all neovim xdg-user-dirs

xdg-user-dirs-update

export EDITOR="/usr/bin/nvim"
sudo cp /usr/bin/nvim ~/.local/share/applications/

sudo dnf remove nano 

fc-cache -v

mkdir ~/Git-Clones
cd ~/Git-Clones
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
sh setup.sh
cd

git clone https://github.com/Toqozz/wired-notify
cd wired-notify
sudo sh installer.sh
cd

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

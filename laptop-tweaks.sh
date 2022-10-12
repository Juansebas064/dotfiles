sudo systemctl enable bluetooth
echo "
blueman-applet &
nitrogen --restore &
" >> $HOME/.config/openbox/autostart
sudo systemctl disable dhcpcd
sudo systemctl stop dhcpcd
sudo systemctl enable wpa_supplicant
sudo systemctl start wpa_supplicant
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

brightnessctl s 4%-
percentage=$(( 100 * $(brightnessctl g) / $(brightnessctl m) )) 
#echo $percentage
notify-send "Brightness" "$percentage%" -h "string:image-path:$HOME/.icons/Flat-Remix-Blue-Dark/apps/scalable/preferences-system-brightness-lock.svg" -h "string:wired-tag:brightness"

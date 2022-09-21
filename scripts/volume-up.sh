pamixer -i 5 --allow-boost --set-limit 150
level="$(pamixer --get-volume)"

if [ $level -gt 79 ]
then
    notify-send "Volume" "$(pamixer --get-volume-human)" -h "string:image-path:$HOME/.icons/Flat-Remix-Blue-Dark/panel/audio-volume-high.svg" -h "string:wired-tag:media" 
elif [ $level -gt 39 ]
then
    notify-send "Volume" "$(pamixer --get-volume-human)" -h "string:image-path:$HOME/.icons/Flat-Remix-Blue-Dark/panel/audio-volume-medium.svg" -h "string:wired-tag:media" 
elif [ $level -gt 0 ]
then
    notify-send "Volume" "$(pamixer --get-volume-human)" -h "string:image-path:$HOME/.icons/Flat-Remix-Blue-Dark/panel/audio-volume-low.svg" -h "string:wired-tag:media" 
fi

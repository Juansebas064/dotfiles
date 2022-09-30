pamixer -d 5 --allow-boost
level="$(pamixer --get-volume)"

level="$(pamixer --get-volume)"

if [ $(pamixer --get-mute) = true ]
then
    notify-send "Volume" "$(pamixer --get-volume-human)" -h "string:image-path:$HOME/.icons/Flat-Remix-Blue-Dark/panel/audio-volume-muted.svg" -h "string:wired-tag:media" -u low
elif [ $level -gt 79 ]
then
    notify-send "Volume" "$(pamixer --get-volume-human)" -h "string:image-path:$HOME/.icons/Flat-Remix-Blue-Dark/panel/audio-volume-high.svg" -h "string:wired-tag:media" -u low
elif [ $level -gt 39 ]
then
    notify-send "Volume" "$(pamixer --get-volume-human)" -h "string:image-path:$HOME/.icons/Flat-Remix-Blue-Dark/panel/audio-volume-medium.svg" -h "string:wired-tag:media" -u low
elif [ $level -gt 0 ]
then
    notify-send "Volume" "$(pamixer --get-volume-human)" -h "string:image-path:$HOME/.icons/Flat-Remix-Blue-Dark/panel/audio-volume-low.svg" -h "string:wired-tag:media" -u low
elif [ $level == 0 ]
then
    notify-send "Volume" "$(pamixer --get-volume-human)" -h "string:image-path:$HOME/.icons/Flat-Remix-Blue-Dark/panel/audio-volume-muted.svg" -h "string:wired-tag:media" -u low
fi


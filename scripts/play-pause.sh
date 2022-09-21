playerctl play-pause

if [ $(playerctl status) = "Playing" ]
then
    notify-send "$(playerctl metadata xesam:artist)" "$(playerctl metadata xesam:title)" -h "string:image-path:$(playerctl metadata mpris:artUrl | sed 's/file:\/\///')" -h "string:wired-tag:media"
fi

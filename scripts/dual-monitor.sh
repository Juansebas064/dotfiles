source=$(xrandr |grep ' connected' |grep 'HDMI' |awk '{print $1}')

if [ $source = 'HDMI-1' ]
then   
    xrandr --output eDP-1 --mode 1368x768 --pos 1368x0 --output HDMI-1 --auto --above eDP-1
    tint2 -c ~/.config/tint2/tint2rc2 &
    nitrogen --restore
else
    xrandr -s 1368x768 
    killall tint2
    tint2 &
    nitrogen --restore
fi
picom --experimental-backends &

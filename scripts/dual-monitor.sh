source=$(xrandr |grep ' connected' |grep 'HDMI' |awk '{print $1}')

if [ $source = 'HDMI-1' ]
then   
    xrandr --output eDP-1 --mode 1368x768 --pos 1368x0 --output HDMI-1 --auto --above eDP-1
    nitrogen --restore
else
    xrandr -s 1368x768 
    nitrogen --restore
fi
#  _       _ _   
# (_)_ __ (_) |_ 
# | | '_ \| | __|
# | | | | | | |_ 
# |_|_| |_|_|\__|
#
# things to run at the beginning of the session 

# Set background
wal -i $(cat ~/.cache/wal/wal)

# source .Xresources
xrdb -merge ~/.Xresources

# hide cursor when typing
unclutter -idle 5 &

# start compositor
picom -b

# notification daemon
dunst &

# start window manager
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session i3

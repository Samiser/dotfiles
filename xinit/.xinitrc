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

# start compositor
compton -b

# keep ur eyes good
redshift -b 1.0:0.5 -t 6000:3000 &

# urxvt daemon
# see man urxvtd and man urxvtc
urxvtd -q &

# notification daemon
dunst &

# hide the mouse when not in use
unclutter -idle 5 &

nm-applet &

# start window manager
exec i3

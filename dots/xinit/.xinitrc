#       _       _ _
# __  _(_)_ __ (_) |_ _ __ ___
# \ \/ / | '_ \| | __| '__/ __|
#  >  <| | | | | | |_| | | (__
# /_/\_\_|_| |_|_|\__|_|  \___|
# 
# executed by xinit (startx) 
# must start the root X program

# source xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

# start window manager
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session i3

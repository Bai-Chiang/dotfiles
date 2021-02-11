#!/bin/sh

# https://wiki.archlinux.org/index.php/NVIDIA_Optimus#Use_NVIDIA_graphics_only
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

twm &
xclock -geometry 50x50-1+1 &
xterm -geometry 80x50+494+51 &
xterm -geometry 80x20+494-0 &

setxkbmap -option "ctrl:nocaps,terminate:ctrl_alt_bksp"

export DESKTOP_SESSION=kde
exec qtile

#export DESKTOP_SESSION=plasma
#exec startplasma-x11

# Here Xfce is kept as default
#session=${1:-qtile}
#
#case $session in
#    qtile           ) exec qtile;;
#    kde             ) exec startplasma-x11;;
#    # xfce|xfce4        ) exec startxfce4;;
#    # No known session, try to run it as command
#    *                 ) exec $1;;
#esac


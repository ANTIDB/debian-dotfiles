#!/bin/sh 
usersources=$HOME/.Xresources 
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# SCIM
#/usr/bin/scim -d
#XMODIFIERS="@im=SCIM"
#GTK_IM_MODULE=scim

# ibus
/usr/bin/ibus-daemon --xim &
XMODIFIERS="@im=ibus"
GTK_IM_MODULE=ibus


export XMODIFIERS
export GTK_IM_MODULE

# Perforce
export P4PORT=10.71.0.81:1666
export P4USER=wsy
export P4PASSWD=704615
export P4EDITOR=vim
export P4DIFF=vimdiff

#urxvt
urxvtd -q -f -o &

case "$1" in
    dwm) 	    exec dwm;;
    awesome)    exec awesome;;
    gnome)    	exec gnome-session;;
    *)	    	exec awesome;;
esac

/**/

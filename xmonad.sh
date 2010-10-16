#!/bin/bash
 
# Load resources
xrdb -merge .Xresources

# Set up an icon tray
trayer --edge top --align right --SetDockType true \
       --SetPartialStrut true --expand true --width 10 \
       --transparent true --tint 0x191970 --height 12 &
 
# Set the background color
xsetroot -solid midnightblue

# launch apps
 
xscreensaver -no-splash &

if [ -x /usr/bin/gnome-power-manager ] ; then
   sleep 3
   gnome-power-manager &
fi

if [ -x /usr/bin/gnome-volume-control-applet ] ; then
   gnome-volume-control-applet &
fi

if [ -x /usr/bin/wicd-gtk ] ; then
   wicd-gtk -a &
fi

if [ -x /usr/bin/bluetooth-applet ] ; then
   bluetooth-applet &
fi

if [ -x /usr/bin/dropbox ] ; then
   dropbox start
fi
  
# BUGZ probably due to GTK+
#if [ -x /usr/local/bin/googsystray ] ; then
#   googsystray &
#fi
  
xmonad

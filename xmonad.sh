#!/bin/bash

cd $HOME
 
# Load resources
/usr/bin/xrdb -merge .Xresources

# Set up an icon tray
/usr/bin/trayer --edge top --align right --SetDockType true \
       --SetPartialStrut true --expand true --width 10 \
       --transparent true --tint 0x191970 --height 12 &
 
# Set the background color
/usr/bin/xsetroot -solid blue

# launch apps
 
#xscreensaver -no-splash &

# more trouble than it's worth == keeps shutting 
off computer if power supply intermittently disconnected.
#if [ -x /usr/bin/gnome-power-manager ] ; then
#   sleep 3
#   gnome-power-manager &
#fi

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
   dropbox start &
fi
  
if [ -x /usr/bin/xflux ]; then
   if [ "pslist xflux" != "" ]; then
      xflux -z 10023
   fi;
fi
  
xmonad

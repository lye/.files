if [ -f /usr/local/bin/xautolock ] ; then
	/usr/local/bin/xautolock -time 30 -locker /usr/local/bin/xlock &
fi

if [ -f /usr/local/bin/redshift ] ; then
	/usr/local/bin/redshift -l 47.6:122.1667 -t 5700:3600 -g 0.8 -m vidmode &
fi

xset s off
xset -dpms
xrdb -merge ~/.Xdefaults

export MOZ_DISABLE_IMAGE_OPTIMIZE=1

/usr/local/bin/xmonad

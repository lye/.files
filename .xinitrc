if [ -f /usr/local/bin/xautolock ] ; then
	/usr/local/bin/xautolock -time 30 -locker /usr/local/bin/xlock &
fi

/usr/local/bin/xmonad

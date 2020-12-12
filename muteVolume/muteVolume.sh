# !/bin/bash


muteStatus=$(osascript -e "output muted of (get volume settings)")

if [[ ${muteStatus} = "true" ]]; then
	echo "Volume already at zero."
else
        osascript -e "set volume 5"; say "About to mute macbook volume."
	osascript -e "set volume 0"
	echo "Volume muted."
fi



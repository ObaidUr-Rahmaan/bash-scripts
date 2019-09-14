#!/bin/bash
counter=0
limit=$1
summary=$2
startmessage=$3
endmessage=$4
notify-send -u critical -i appointment -t 600 "$summary" "$startmessage"
# notifu /m "Timer Started. Get to Work!" /d 5000
echo
while [ $counter != $limit ]; do
   echo "$counter minutes so far...";
   sleep 60
   let "counter = $counter + 1"
done
if [ $counter = $limit ]; then
   echo
   # notify-send -u critical -i appointment "$summary" "$endmessage"
   notifu /m "Timer ended. Take a break" /d 5000
   echo -e '\a' &gt;&amp;2
   exit 0
fi
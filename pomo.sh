#!/bin/bash
work_counter=0
break_counter=0
work_limit=$1
break_limit=$2
summary=$3
work_message=$4
break_message=$5
end_message=$6
notify-send -u critical -i appointment -t 600 "$summary" "$work_message"
echo
while [ $work_counter != $work_limit ]; do
   echo "$work_counter minutes so far...";
   sleep 1
   let "work_counter = $work_counter + 1"
done
if [ $work_counter = $work_limit ]; then
   echo
   notify-send -u critical -i appointment -t 600 "$summary" "$break_message"
   echo
   while [ $break_counter != $break_limit ]; do
      echo "$break_counter minutes so far...";
      sleep 1
      let "break_counter = $break_counter + 1"
   done
   if [ $break_counter = $break_limit ]; then
      echo
      notify-send -u critical -i appointment "$summary" "$end_message"
      exit 0
   fi
fi
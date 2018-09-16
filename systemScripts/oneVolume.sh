 #!/usr/bin/env bash

VOLUME_UP='+5%'
VOLUME_DOWN='-5%'

echo $VOLUME_UP
STATUS="$(playerctl status)"
echo $STATUS

#the following functions take as the first argument increase or decrease, and as the second the amount.
function mprisVolume {
  if [ $1 == "increase" ]; then
     echo "yep"
     playerctl volume "$2"+ 
  fi
  if [ $1 == "decrease" ]; then
    echo "there"
    playerctl volume "$2"-
  fi
}

#this function takes as its first increase or decrease, then the amount (as a percentage)hg  .
function systemVolume {
  for SINK in `pactl list sinks | grep 'Sink #' | cut -d "#" -f 2`
  do                                                                
    if [ $1 == "increase" ]; then
       echo "yippie kai yay"
       if (( `pamixer --sink $SINK --get-volume` > 100 )); then
         pactl set-sink-volume $SINK 100%
       else
         pactl set-sink-volume $SINK +$2 
       fi
    fi
    if [ $1 == "decrease" ]; then
      echo "toight"
      pactl set-sink-volume $SINK -$2
    fi
  done  
}
  
if [ $STATUS == "Playing" ]; then
  #echo "testing"
  if [ $1 == "increase" ]; then
    mprisVolume increase 0.05
    echo $(playerctl volume)
    if [ $(playerctl volume) == 1.000000 ]; then
      echo "thisThingInsane"
      systemVolume increase 5%
    fi  
  fi
  if [ $1 == "decrease" ]; then
    mprisVolume decrease 0.05
  fi
fi
if [ $STATUS == "Paused" ] || $(grep -Fq 'Stopped' <<< $STATUS) ; then
    if [ $1 = "increase" ]; then
      systemVolume increase 5%
    fi
    if [ $1 = "decrease" ]; then
      systemVolume decrease 5%
    fi 
fi



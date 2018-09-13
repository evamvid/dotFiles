VOLUME_UP='+5%'
VOLUME_DOWN='-5%'

echo $VOLUME_UP
STATUS="$(playerctl status)"
echo $STATUS

for SINK in `pactl list sinks | grep 'Sink #' | cut -d "#" -f 2`
do
  
if [ $STATUS == "Playing" ]; then
  #echo "testing"
  if [ "$1" == "increase" ]; then
     #echo "test2"
     playerctl volume 0.05+
  fi
  if [ "$1" == "decrease" ]; then
    playerctl volume 0.05-
  fi
fi
if [ $STATUS == "Paused" ] || $(grep -Fq 'Stopped' <<< $STATUS) ; then
  #echo "stopped or paused"
  #if  $(grep -Fq 'Stopped' <<< $STATUS); then
    #echo "stopped"
  #fi
  if [ $1 = "increase" ]; then
    pactl set-sink-volume $SINK $VOLUME_UP  
    if (( `pamixer --sink $SINK --get-volume` > 100 )); then
      pactl set-sink-volume $SINK 100%
    fi
  fi
  if [ $1 = "decrease" ]; then
     pactl set-sink-volume $SINK $VOLUME_DOWN
  fi
fi
done

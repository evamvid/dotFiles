TEMP=$(ansiweather -l darmstadt -p false -h false -w false -i false | cut -c 43-47)
echo "" "$TEMP"

TEMP=$(ansiweather -l darmstadt -p false -h false -w false -i false | cut -c 50-55)
echo "" "$TEMP"

TEMP=$(ansiweather -l darmstadt -p false -h false -w false -i false | cut -c 41-46)
echo "" "$TEMP"

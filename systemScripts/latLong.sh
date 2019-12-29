LAT=$(curl -s --request GET   --url https://freegeoip.app/csv/   --header 'accept: application/json'   --header 'content-type: application/json' | awk -F ',' '{print $9}' )
LONG=$(curl -s --request GET   --url https://freegeoip.app/csv/   --header 'accept: application/json'   --header 'content-type: application/json' | awk -F ',' '{print $10}' )
echo $LAT, $LONG

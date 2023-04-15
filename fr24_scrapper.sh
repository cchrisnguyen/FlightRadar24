#curl flightradar data for all sectors. (each api call can only get max 1500 flights)  
# Format:  bounds= 90 %2C -90 %2C 140 %2C 180. lat fixed at 90 to -90 deg range for each curl, long 10/20 deg range for each curl

# To execute this script every day: add this to cron by
# executing this command: crontab -e and add the following line to the follow:
# 0 0 * * * /home/storagedata/fr24_data/fr24_scrapper.sh

year=$(date +\%Y -u)
month=$(date +\%m -u)
day=$(date +\%d -u)

while [ $(date +\%d -u) -eq $day ]; do
    sleep 10 & 
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/1.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C-180%2C-120&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1" &
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/2.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C-120%2C-100&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1" &
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/3.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C-100%2C-90&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1" &
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/4.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C-90%2C-80&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1" &
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/5.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C-80%2C-60&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1" &
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/6.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C-60%2C0&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1" &
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/7.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C0%2C10&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1" &
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/8.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C10%2C20&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1" &
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/9.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C20%2C40&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1" &
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/10.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C40%2C50&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1" &
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/11.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C50%2C60&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1" &
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/12.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C60%2C80&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1" &
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/13.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C80%2C100&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1" &
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/14.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C100%2C120&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1" &
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/15.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C120%2C140&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1" &
    curl -o /home/storagedata/fr24_data/$year/$month/$day/$(date +\%T -u)/16.json --create-dirs "https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&bounds=90%2C-90%2C140%2C180&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1"
    wait
done

cd /home/storagedata/fr24_data/$year/$month/
tar -czvf $day.tar.gz $day/
rm -r /home/storagedata/fr24_data/$year/$month/$day/

exit 0
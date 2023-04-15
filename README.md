# Flightradar 24 data scrapper

This project contains a bash script to scrap flight path data from Flightradar 24 through their api URL. The script will scrap the data every 10 second which can be changed by editing the sleep time `sleep 10 &` at line 13 of the script. At the end of each day, the script will archive, compress and delete the raw data.

## Installation

To install and execute the script, [crontab](https://crontab.guru/) is used to execute the script daily at 00:00. First, type `crontab -e` in a linux terminal, then add the following line to the bottom.

```bash
0 0 * * * /home/storagedata/fr24_data/fr24_scrapper.sh
```

## Data structure

Since we can only scrap maximum of 1500 flights per each API call, we have split the Earth into 16 "slices". The range is determined manually to ensure that each slice does not exceed 1500 flight limit. The range of each slice can be determined by editing the api URL as below:

```bash
https://data-live.flightradar24.com/zones/fcgi/feed.js?faa=1&\
bounds=[lat]%2C[lat]%2C[long]%2C[long]\
&satellite=1&mlat=1&flarm=1&adsb=1&gnd=1&air=1&vehicles=1&estimated=1&maxage=14400&gliders=1
```

The range are specified at the second line: `bounds=`**`[lat]`**`%2C`**`[lat]`**`%2C`**`[long]`**`%2C`**`[long]`**.  Notice that for each slice / api call, the latitude is fixed at range of +90 to -90 degrees. Hence, it would typically be `bounds=90%2C-90%2C[long]%2C[long]`

## Author
HUI, Ka Yiu
My former labmate @HKUST

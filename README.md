# Profiler scripts for websites selling used objects in Berlin
## eBay Berlin profiler
[eBay Kleinanzeigen](https://www.ebay-kleinanzeigen.de/stadt/berlin/) is the go to website for buying used objects in Berlin. The python [script](ebay_berlin.py) fetches 
the number of open listings for different product groupings from the overview [website](https://www.ebay-kleinanzeigen.de/s-katalog-orte.html?locationId=3331) and saves it to a sqlite db.
A Jupyter notebook [link](eBay_Overview.ipynb) shows a quick overview of the difference in the number of listings between the last two timestamps the script was run.  

A cron job is configured in a Raspberry Pi to run the python script every 30 minutes. The goal is to profile the number of listings at regular intervals in order to identify the peak activity periods for specific product groupings.  



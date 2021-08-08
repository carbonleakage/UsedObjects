#!/bin/sh
PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/saravananshanmugam/opt/miniconda3/bin:/Users/saravananshanmugam/opt/miniconda3/condabin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin
~/opt/miniconda3/bin/python /Users/saravananshanmugam/Carbonleakage_Git/UsedObjects/ebay_berlin.py
papermill /Users/saravananshanmugam/Carbonleakage_Git/UsedObjects/eBay_Overview.ipynb /Users/saravananshanmugam/Carbonleakage_Git/UsedObjects/eBay_Overview.ipynb
git add .
git commit -m "Cron Commit"
git push origin main
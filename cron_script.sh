#!/bin/sh
PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin
~/opt/miniconda3/bin/python /Users/saravananshanmugam/Carbonleakage_Git/UsedObjects/ebay_berlin.py
~/opt/miniconda3/bin/python papermill eBay_Overview.ipynb eBay_Overview.ipynb
git add .
git commit -m "Cron Commit"
git push origin main
#!/bin/sh
PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin
python ebay_berlin.py
python -m papermill eBay_Overview.ipynb eBay_Overview.ipynb
git add .
git commit -m "Cron Commit"
git push origin main
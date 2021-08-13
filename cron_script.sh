#!/bin/sh
cd ~/Python_Projects/UsedObjects/
#source usedobjenv/bin/activate
./ebay_berlin.py
/home/ubuntu/Python_Projects/UsedObjects/usedobjenv/bin/papermill eBay_Overview.ipynb eBay_Overview.ipynb
#git add .
#git commit -m "Cron Commit"
#git push origin main

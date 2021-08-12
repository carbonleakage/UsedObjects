#!/bin/sh
cd Python_Projects/UsedObjects/
source source usedobjenv/bin/activate
papermill eBay_Overview.ipynb eBay_Overview.ipynb
git add .
git commit -m "Cron Commit"
git push origin main

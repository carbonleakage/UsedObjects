from requests_html import HTMLSession
import sqlite3
import logging
import datetime as dt
import os
os.chdir("/Users/saravananshanmugam/Carbonleakage_Git/UsedObjects/")

logging.basicConfig(filename = 'UsedObjectsLog.log',level=logging.DEBUG)
logging.info(f"{dt.datetime.now()} INFO: Started Running eBay script!")
start_time = dt.datetime.now().strftime("%Y-%m-%d %H:%M")

def db_init_tbl_ebay(db_name, tbl_name):
    db_conn = sqlite3.connect(db_name)
    cur = db_conn.cursor()

    cur.execute(f'''CREATE TABLE IF NOT EXISTS {tbl_name} ( 
                            RECORD_TIME STRING, 
                            PRODUCT STRING,
                            LISTING_COUNT INTEGER)''') 
    db_conn.commit()
    db_conn.close()
    logging.info(f"{dt.datetime.now()} INFO: Started Running eBay script!")

def db_insert_ebay(db_name,tbl_name, data_list):
    db_conn = sqlite3.connect(db_name)
    cur = db_conn.cursor()

    for row in data_list:
        cur.execute(f''' INSERT INTO {tbl_name} VALUES (?,?,?)''', (start_time, row[0], row[1]))

    db_conn.commit()
    db_conn.close()
    logging.info(f"{dt.datetime.now()} INFO: Inserted {len(data_list)} rows into {tbl_name} table!")


db = "/Users/saravananshanmugam/Carbonleakage_Git/UsedObjects/UsedObjects.db"
tbl_name = "EBAY_TOP_BERLIN"
db_init_tbl_ebay(db, tbl_name)

session = HTMLSession()
url = "https://www.ebay-kleinanzeigen.de/s-katalog-orte.html?locationId=3331"

response = session.get(url)
top_list = response.html.find("li.l-container-row")

for sublist in top_list:
    subrows = [i for i in sublist.text.replace(")","").split("\n")]
    subrow_pairs = [(i.split("\xa0(")[0], int(i.split("\xa0(")[1].replace(".",""))) for i in subrows]
    # subrows_dict = {i,j for i,j in }
    db_insert_ebay(db,tbl_name,subrow_pairs)
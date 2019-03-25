#!/bin/bash

#MySQL上のItemテーブルのcardinalityを取得する

echo "items.id"
mysql -uroot -proot -Drubis --host=127.0.0.1 -e 'SELECT count(distinct(id)) FROM items;'


echo "items.name"
mysql -uroot -proot -Drubis --host=127.0.0.1 -e 'SELECT count(distinct(name)) FROM items;'

echo "items.description"
mysql -uroot -proot -Drubis --host=127.0.0.1 -e 'SELECT count(distinct(description)) FROM items;'

echo "items.initial_price"
mysql -uroot -proot -Drubis --host=127.0.0.1 -e 'SELECT count(distinct(initial_price)) FROM items;'

echo "items.quantity"
mysql -uroot -proot -Drubis --host=127.0.0.1 -e 'SELECT count(distinct(quantity)) FROM items;'

echo "items.reserve_price"
mysql -uroot -proot -Drubis --host=127.0.0.1 -e 'SELECT count(distinct(reserve_price)) FROM items;'

echo "items.nb_of_bids"
mysql -uroot -proot -Drubis --host=127.0.0.1 -e 'SELECT count(distinct(nb_of_bids)) FROM items;'

echo "items.max_bid"
mysql -uroot -proot -Drubis --host=127.0.0.1 -e 'SELECT count(distinct(max_bid)) FROM items;'

echo "items.start_date"
mysql -uroot -proot -Drubis --host=127.0.0.1 -e 'SELECT count(distinct(start_date)) FROM items;'

echo "items.end_date"
mysql -uroot -proot -Drubis --host=127.0.0.1 -e 'SELECT count(distinct(end_date)) FROM items;'

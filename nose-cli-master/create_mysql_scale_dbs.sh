#!/bin/bash

set -e

create_db(){
  mysql -uroot -proot --host=127.0.0.1  -e "create database if not exists  $1;"
}
drop_db(){
  mysql -uroot -proot --host=127.0.0.1  -e "drop database if exists  $1;"
}
set_fake_db_size(){
  sed -i -e "s/scale_factor = \(.*\)/scale_factor = $1/g" fake_scale.js
}

set_fake_db_name(){
  sed -i -e "s/database: \(.*\)/database: '$1'/g" fake_scale.js
}

create_schema(){
  mysql -uroot -proot --host=127.0.0.1 $1 < rubis-schema.sql
  mysql -uroot -proot --host=127.0.0.1 $1 < rubis-update.sql

}

up_mysql_db(){
  drop_db $1
  create_db $1
  create_schema $1
  set_fake_db_size $2
  set_fake_db_name $1
  node fake_scale.js
}

cd ./experiments/rubis

#up_mysql_db half 0.5
up_mysql_db one_half 1.5

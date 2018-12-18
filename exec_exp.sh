#!/bin/bash

set -e

cd ./nose-cli-master/nose/experiments/rubis/
#mysql --host=127.0.0.1 -uroot -proot -e 'create database rubis;' 
mysql --host=127.0.0.1 -uroot -proot -Drubis < rubis-schema.sql
mysql --host=127.0.0.1 -uroot -proot -Drubis < rubis-update.sql

node fake.js

#/home/yusuke/.rbenv/shims/bundle exec ruby /home/yusuke/Dropbox/TestNoSE/nose-cli-master/bin/nose create ./rubis_baseline
#/home/yusuke/.rbenv/shims/bundle exec ruby /home/yusuke/Dropbox/TestNoSE/nose-cli-master/bin/nose load ./rubis_baseline

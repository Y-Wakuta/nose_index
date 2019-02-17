#!/bin/bash

set -e  
cass_db_ip=$1
recho(){ echo -e "\e[1;31m $* \e[m"; }

check_dbs(){
  recho "check_dbs"
  echo "==============================================="
  cqlsh $cass_db_ip -e "desc keyspaces;"
  echo "==============================================="
}

change_db_name (){
  sed -i -e "s/keyspace: \(.*\)/keyspace: $1/1" ./nose.yml
}

create_db(){
  recho "create db"
  cqlsh -e "create keyspace if not exists $1 with REPLICATION = {'class': 'SimpleStrategy','replication_factor': 1}" $cass_db_ip
  check_dbs $1
}

drop_db(){
  recho "drop db"
  cqlsh -e "drop keyspace $1" $cass_db_ip
  check_dbs $1
}

up_baseline(){
  recho "baseline" 
  change_db_name baseline
  create_db baseline
  bundle exec nose create rubis_baseline.rb
  bundle exec nose load rubis_baseline.rb
  recho "sleeping"
  sleep 200
  bundle exec nose benchmark plans/rubis_baseline.rb --format csv > rubis_baseline_bench_result.csv
  drop_db baseline
  sleep 200
}

exec_bench(){
  recho $1 
  change_db_name $1
  create_db $1
  bundle exec nose create $1.json
  bundle exec nose load $1.json
  recho "sleeping"
  sleep 200
  bundle exec nose benchmark schemas/$1.json --format csv > bench_result_$1.csv
  drop_db $1
  sleep 200
}

echo "run nose_index"
exec_bench rubis_secondary_bidding_161000000_si
exec_bench rubis_secondary_bidding_161000000_no_si
echo "baseline"
up_baseline

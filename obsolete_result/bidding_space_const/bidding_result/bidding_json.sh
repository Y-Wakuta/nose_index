#!/bin/bash

echo "running"
bundle exec nose search rubis_secondary_bidding  --format json --parallel true --max_space 180000000 > bidding_180000000.json &
bundle exec nose search rubis_secondary_bidding  --format json --parallel true --max_space 185000000 > bidding_185000000.json &
bundle exec nose search rubis_secondary_bidding  --format json --parallel true --max_space 187000000 > bidding_187000000.json &
bundle exec nose search rubis_secondary_bidding  --format json --parallel true --max_space 190000000 > bidding_190000000.json &
bundle exec nose search rubis_secondary_bidding  --format json --parallel true --max_space 177000000 > bidding_177000000.json &
bundle exec nose search rubis_secondary_bidding  --format json --parallel true --max_space 171000000 > bidding_171000000.json &
bundle exec nose search rubis_secondary_bidding  --format json --parallel true --max_space 161000000 > bidding_161000000.json &

bundle exec nose search rubis_secondary_bidding --secondary false --format json --parallel true --max_space 180000000 > bidding_no_si_180000000.json &
bundle exec nose search rubis_secondary_bidding --secondary false --format json --parallel true --max_space 185000000 > bidding_no_si_185000000.json &
bundle exec nose search rubis_secondary_bidding --secondary false --format json --parallel true --max_space 187000000 > bidding_no_si_187000000.json &
bundle exec nose search rubis_secondary_bidding --secondary false --format json --parallel true --max_space 190000000 > bidding_no_si_190000000.json &
bundle exec nose search rubis_secondary_bidding --secondary false --format json --parallel true --max_space 177000000 > bidding_no_si_177000000.json &
bundle exec nose search rubis_secondary_bidding --secondary false --format json --parallel true --max_space 171000000 > bidding_no_si_171000000.json &
bundle exec nose search rubis_secondary_bidding --secondary false --format json --parallel true --max_space 161000000 > bidding_no_si_161000000.json &
wait
echo "done"

#bundle exec nose search rubis_secondary_browsing --parallel true > rubis_results/rubis_secondary_browsing_result_si.txt  &
#bundle exec nose search rubis_secondary_bidding --parallel true > rubis_results/rubis_secondary_bidding_result_si.txt &
#bundle exec nose search rubis_secondary_write_heavy --parallel true > rubis_results/rubis_secondary_write_heavy_result_si.txt &
#echo "running"
#wait
#echo "done txt"


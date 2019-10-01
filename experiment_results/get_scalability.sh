#!/bin/bash
#このスクリプトで計算した結果のスケーラビリティのグラフであることを保証するためにメモとして作成

set -e

bundle exec ruby ./scalability.rb ./bidding_161_5iter_one_node/bidding_161_no_si.csv ./bidding_161_5iter_one_node/bidding_161_si.csv  ./bidding_161_10/bidding_161_no_si.csv ./bidding_161_10/bidding_161_si.csv ./bidding_161_20/bidding_161_no_si.csv ./bidding_161_20/bidding_161_si.csv ./bidding_161_30/bidding_161_no_si.csv ./bidding_161_30/bidding_161_si.csv

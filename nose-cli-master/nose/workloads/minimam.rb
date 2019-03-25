# frozen_string_literal: true

NoSE::Workload.new do
  Model 'rubis'

  # Define queries and their relative weights, weights taken from below
  # http://rubis.ow2.org/results/SB-BMP/Bidding/JBoss-SB-BMP-Bi-1500/perf.html#run_stat
  # http://rubis.ow2.org/results/SB-BMP/Browsing/JBoss-SB-BMP-Br-1500/perf.html#run_stat
  DefaultMix :browsing#ここのbrowsingをbiddingとかに書き換えることでより多くのqueryに対してテストできそう
  #biddingの容量下限は 108000000
  # browsingは52676935

  Group 'BrowseCategories', browsing: 4.44,
        bidding: 7.65,
        write_medium: 7.65,
        write_heavy: 7.65 do
    Q 'SELECT users.firstname FROM users WHERE users.lastname = ? -- 1'
    Q 'SELECT users.* FROM users WHERE users.firstname = ? -- 1' #yusuke secondary indexの例が欲しかったので追加
  #  Q 'SELECT items.id, items.name, items.initial_price, items.max_bid, items.nb_of_bids, items.end_date FROM items.category WHERE category.id = ? AND items.end_date >= ? LIMIT 25 -- 7'
  #  Q 'SELECT items.id, items.name, items.initial_price, items.max_bid, items.nb_of_bids, items.end_date FROM items.category WHERE category.dummy = ? AND items.end_date >= ? LIMIT 25 -- 7_secondary'
  end
end

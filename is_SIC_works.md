# SIC 比較

## no_SIC

### １つ目

``` sql
is_SI: true i3886340613 [users.id] [] → [items.start_date] $4800000 Graph(nodes: items, bids, users, edges: {items=>#<Set: {items.bids}>, bids=>#<Set: {bids.item, bids.user}>, users=>#<Set: {users.bids}>})  base_cf_key: i3146222817
```
* base_cf

``` sql
   i3146222817 [["users_id"], ["items_id", "items_end_date", "bids_id"], ["items_buy_now", "items_description", "items_initial_price", "items_max_bid", "items_name", "items_nb_of_bids", "items_quantity", "items_reserve_price", "items_start_date"], [["items", "bids", "bids"], ["users", "bids", "bids"]]]
```

* 結果的に出力されたindexの中でbase_cfを包含するもの

以下の物が最も近いが`bids.id`がない。`items_buy_now`も無いがそもそも`items_buy_now`ってなんだ

``` sql
is_SI: false i2653317939 [users.id] [buynow.date, buynow.id, items.id] → [buynow.qty, items.name, items.description, items.initial_price, items.quantity, items.reserve_price, items.buy_now, items.nb_of_bids, items.max_bid, items.start_date, items.end_date] $13760000 Graph(nodes: items, buynow, users, edges: {items=>#<Set: {items.bought_now}>, buynow=>#<Set: {buynow.item, buynow.buyer}>, users=>#<Set: {users.bought_now}>})
```

### ２つ目

``` sql
is_SI: true i855149802 [users.id] [] → [items.initial_price] $480000 Graph(nodes: items, users, edges: {items=>#<Set: {items.seller}>, users=>#<Set: {users.items_sold}>})  base_cf_key: i4079530362
```

* base_cf

``` sql
      i4079530362 [["users_id"], ["items_id", "items_end_date"], ["items_buy_now", "items_description", "items_initial_price", "items_max_bid", "items_name", "items_nb_of_bids", "items_quantity", "items_reserve_price", "items_start_date"], [["users", "items", "items_sold"]]]
```

* 結果的に出力されたindexの中でbase_cfを包含するもの

以下のものが最も近いと思われるが、`items.buy_now`,`items.description`,`items.quantity`,`items.reserve_price`,`items.start_date`がない。

``` sql
is_SI: false i3639792234 [regions.id] [categories.id, users.id, items.id] → [items.name, items.initial_price, items.max_bid, items.nb_of_bids, items.end_date] $2300000 Graph(nodes: items, users, regions, categories, edges: {items=>#<Set: {items.seller, items.category}>, users=>#<Set: {users.items_sold, users.region}>, regions=>#<Set: {regions.users}>, categories=>#<Set: {categories.items}>})
```

## with_SIC

## １つ目(というか１つだけ)

``` sql
is_SI: true i1568647997 [users.id] [] → [items.start_date] $480000 Graph(nodes: items, users, edges: {items=>#<Set: {items.seller}>, users=>#<Set: {users.items_sold}>})  base_cf_key: i4079530362
```

* base_cf

``` sql
is_SI: false i4079530362 [users.id] [items.id, items.end_date] → [items.name, items.description, items.initial_price, items.quantity, items.reserve_price, items.buy_now, items.nb_of_bids, items.max_bid, items.start_date] $6240000 Graph(nodes: items, users, edges: {items=>#<Set: {items.seller}>, users=>#<Set: {users.items_sold}>})
```

* 結果的に出力されたindexの中でbase_cfを包含するもの

どうやら問題なくbase_cfを包含している。

``` sql
is_SI: false i2653317939 [users.id] [buynow.date, buynow.id, items.id] → [buynow.qty, items.name, items.description, items.initial_price, items.quantity, items.reserve_price, items.buy_now, items.nb_of_bids, items.max_bid, items.start_date, items.end_date] $13760000 Graph(nodes: items, buynow, users, edges: {items=>#<Set: {items.bought_now}>, buynow=>#<Set: {buynow.item, buynow.buyer}>, users=>#<Set: {users.bought_now}>})
```
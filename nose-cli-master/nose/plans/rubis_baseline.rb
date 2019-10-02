# frozen_string_literal: true

NoSE::Plans::ExecutionPlans.new do
  Schema 'rubis_baseline'

  DefaultMix :write_heavy

  Group 'BrowseCategories', browsing: 4.44,
        bidding: 7.65,
        write_medium: 7.65,
        write_heavy: 7.65 do
    Plan 'Authentication' do #--1
      Select users.password,users.nickname
      Param  users.id, :==
      Lookup 'users', [users.id, :==]
    end

    Plan 'AuthenticationSecondary' do #--1_secondary
      Select users.password,users.nickname
      Param  users.rating, :==
      Lookup 'usersid_by_rating', [users.rating, :==]
      Lookup 'users', [users.id, :==]
    end

    Plan 'Categories' do # --2
      Select categories['*']
      Param  categories.dummy, :==, 1
      Lookup 'all_categories', [categories.dummy, :==]
      Lookup 'categories', [categories.id, :==]
    end
  end

  Group 'ViewBidHistory', browsing: 2.38,
        bidding: 1.54,
        write_medium: 1.54,
        write_heavy: 1.54 do
    Plan 'ItemName' do # --3
      Select items.name
      Param  items.id, :==
      Lookup 'items', [items.id, :==]
    end

    Plan 'ItemNameSecondary' do # --3_secondary
      Select items.name
      Param  items.quantity, :==
      Lookup 'itemsid_by_quantity', [items.quantity, :==]
      Lookup 'items', [items.id, :==]
    end

    Plan 'Bids' do #4
      Select bids['*'], users.id, users.nickname
      Param  items.id, :==
      Lookup 'bids_by_item', [items.id, :==]
      Lookup 'bids', [bids.id, :==]
      Lookup 'users', [users.id, :==]
    end

    Plan 'BidsSecondary' do # 4_secondary
      Select bids['*'], users.id, users.nickname
      Param  items.quantity, :==
      Lookup 'bids_by_itemquantity', [items.quantity, :==]
      Lookup 'bids', [bids.id, :==]
      Lookup 'users', [users.id, :==]
    end
  end

Group 'ViewItem', browsing: 22.95,
      bidding: 14.17,
      write_medium: 14.17,
      write_heavy: 14.17 do
  Plan 'ItemData' do # 5
    Select items['*']
    Param  items.id, :==
    Lookup 'items', [items.id, :==]
  end

  Plan 'ItemDataSecondary' do # 5_secondary
    Select items['*']
    Param  items.quantity, :==
    Lookup 'itemsid_by_quantity', [items.quantity, :==]
    Lookup 'items', [items.id, :==]
  end

  Plan 'Bids' do #6
    Select bids['*']
    Param  items.id, :==
    Lookup 'bids_by_item', [items.id, :==]
    Lookup 'bids', [bids.id, :==]
  end

  Plan 'BidsSecondary' do #6_secondary
    Select bids['*']
    Param  items.quantity, :==
    Lookup 'bids_by_itemquantity', [items.quantity, :==]
    Lookup 'bids', [bids.id, :==]
  end
end

Group 'SearchItemsByCategory', browsing: 27.77,
      bidding: 15.94,
      write_medium: 15.94,
      write_heavy: 15.94 do
  Plan 'ItemList' do #7
    Select items['*']
    Param  categories.id, :==
    Param  items.end_date, :>=
    Lookup 'items_by_category',
           [categories.id, :==],
           [items.end_date, :>=], limit: 25
    Lookup 'items', [items.id, :==]
  end

  Plan 'ItemListSecondary' do
    Select items['*']
    Param  categories.dummy, :==
    Param  items.end_date, :>=
    Lookup 'items_by_categorydummy',
           [categories.dummy, :==],
           [items.end_date, :>=], limit: 25
    Lookup 'items', [items.id, :==]
  end
end


Group 'ViewUserInfo', browsing: 4.41,
      bidding: 2.48,
      write_medium: 2.48,
      write_heavy: 2.48 do
  Plan 'UserData' do
    Select users['*']
    Param  users.id, :==
    Lookup 'users', [users.id, :==]
  end

  Plan 'UserDataSecondary' do #8_secondary
    Select users['*']
    Param  users.rating, :==
    Lookup 'usersid_by_rating',[users.rating,:==]
    Lookup 'users', [users.id, :==]
  end

  Plan 'CommentsReceived' do #9
    Select comments['*']
    Param  users.id, :==
    Lookup 'comments_by_user', [users.id, :==]
    Lookup 'comments', [comments.id, :==]
  end

  Plan 'CommentsReceivedSecondary' do #9_secondary
    Select comments['*']
    Param  users.rating, :==
    Lookup 'comments_by_userrating', [users.rating, :==]
    Lookup 'comments', [comments.id, :==]
  end
end

Group 'RegisterItem', bidding: 0.53,
      write_medium: 0.53 * 10,
      write_heavy: 0.53 * 100 do
  Plan 'InsertItem' do
    Param  items.id, :==
    Param  items.name, :==
    Param  items.description, :==
    Param  items.initial_price, :==
    Param  items.quantity, :==
    Param  items.reserve_price, :==
    Param  items.buy_now, :==
    Param  items.nb_of_bids, :==
    Param  items.max_bid, :==
    Param  items.start_date, :==
    Param  items.end_date, :==
    Insert 'items'
  end

  Plan 'AddToSold' do
    Param  items.id, :==
    Param  items.end_date, :==
    Param  users.id, :==
    Insert 'user_items_sold'
  end

  Plan 'AddToSoldRating' do
    Param  items.id, :==
    Param  items.end_date, :==
    Param  users.rating, :==
    Insert 'user_items_soldrating'
  end

  Plan 'AddToCategory' do
    Param  items.id, :==
    Param  items.end_date, :==
    Param  categories.id, :==
    Insert 'items_by_category'
  end

  Plan 'AddToCategorydummySecondary' do
    Param  categories.dummy, :==
    Param  items.end_date, :==
    Param  categories.id, :==
    Param  items.id,:==
    Insert 'items_by_categorydummy'
  end

  Plan 'AddToRegion' do
    Support do 
      Plan 'GetRegion' do
        Select regions.id
        Param  users.id, :==
        Lookup 'users', [users.id, :==]
      end
    end

    Param  users.id, :==
    Param  items.id, :==
    Param  items.end_date, :==
    Param  regions.id, :==
    Param  categories.id, :==
    Insert 'items_by_region'
  end
end

Group 'RegisterUser', bidding: 1.07,
      write_medium: 1.07 * 10,
      write_heavy: 1.07 * 100 do
  Plan 'AddUser' do
    Support do
      Plan 'GetRegionName' do 
        Select regions.name
        Param  regions.id, :==
        Lookup 'regions', [regions.id, :==]
      end
    end

    Param  users.id, :==
    Param  users.firstname, :==
    Param  users.lastname, :==
    Param  users.nickname, :==
    Param  users.password, :==
    Param  users.email, :==
    Param  users.rating, :==, 0
    Param  users.balance, :==, 0
    Param  users.creation_date, :==
    Param  regions.id, :==
    Insert 'users'
  end

  Plan 'AddToRegion' do
    Param  users.id, :==
    Param  users.nickname, :==
    Param  regions.id, :==
    Insert 'users_by_region'
  end

  Plan 'AddToUsersIdByRatingSecondary' do
    Param users.rating, :==
    Param users.id, :==
    Insert 'usersid_by_rating'
  end
end


Group 'BuyNow', bidding: 1.16,
      write_medium: 1.16,
      write_heavy: 1.16 do
  Plan 'Authentication' do #12
    Select users.nickname
    Param  users.id, :==
    Lookup 'users', [users.id, :==]
  end

  Plan 'AuthenticationSecondary' do #12_secondary
    Select users.nickname
    Param  users.rating, :==
    Lookup 'usersid_by_rating',[users.rating,:==]
    Lookup 'users', [users.id, :==]
  end

  Plan 'ItemData' do #13
    Select items['*']
    Param  items.id, :==
    Lookup 'items', [items.id, :==]
  end

  Plan 'ItemDataSecondary' do #13_secondary
    Select items['*']
    Param  items.quantity, :==
    Lookup 'itemsid_by_quantity', [items.quantity, :==]
    Lookup 'items', [items.id, :==]
  end
end

Group 'StoreBuyNow', bidding: 1.10,
      write_medium: 1.10 * 10,
      write_heavy: 1.10 * 100 do
  Plan 'ReduceQuantity' do
    Support do 
      Plan 'OldQuantity' do
        Select items.quantity
        Param items.id, :==
        Lookup 'items', [items.id, :==]
      end
    end

    Param  items.id, :==
    Insert 'items', items.id, items.quantity
  end

  Plan 'AddBuyNow' do
    Param  buynow.id, :==
    Param  buynow.qty, :==
    Param  buynow.date, :==
    Param  items.id, :==
    Insert 'buynow'
  end

  Plan 'AddToBought' do
    Param users.id, :==
    Param buynow.id, :==
    Param buynow.date, :==
    Insert 'buynow_by_user'
  end

  Plan 'yusukeGetItemsInfos' do #14
    Select items.quantity, items.nb_of_bids, items.end_date
    Param items.id, :==
    Lookup 'items',[items.id, :==]
  end

  Plan 'yusukeGetItemsInfosSecondary' do #14_secondary
    Select items.quantity, items.nb_of_bids, items.end_date
    Param items.quantity, :==
    Lookup 'itemsid_by_quantity', [items.quantity, :==]
    Lookup 'items',[items.id, :==]
  end
end

Group 'PutBid', bidding: 5.40, write_medium: 5.40, write_heavy: 5.40 do
  Plan 'Authentication' do #17
    Select users.password,users.nickname
    Param  users.id, :==
    Lookup 'users', [users.id, :==]
  end

  Plan 'AuthenticationSecondary' do #17_secondary
    Select users.password,users.nickname
    Param  users.rating, :==
    Lookup 'usersid_by_rating', [users.rating, :==]
    Lookup 'users', [users.id, :==]
  end

  Plan 'ItemData' do #18
    Select items['*']
    Param  items.id, :==
    Lookup 'items', [items.id, :==]
  end

  Plan 'ItemDataSecondary' do #18_secondary
    Select items['*']
    Param  items.quantity, :==
    Lookup 'itemsid_by_quantity',[items.quantity, :==]
    Lookup 'items', [items.id, :==]
  end

  Plan 'Bids' do #19
    Select bids['*']
    Param  items.id, :==
    Lookup 'bids_by_item', [items.id, :==]
    Lookup 'bids', [bids.id, :==]
  end

  Plan 'BidsSecondary' do #19_secondary
    Select bids['*']
    Param  items.quantity, :==
    Lookup 'bids_by_itemquantity', [items.quantity, :==]
    Lookup 'bids', [bids.id, :==]
  end
end

Group 'StoreBid', bidding: 3.74,
      write_medium: 3.74 * 10,
      write_heavy: 3.74 * 100 do
  Plan 'CheckMaxBid' do #21
    Select items.nb_of_bids, items.max_bid
    Param  items.id, :==
    Lookup 'items', [items.id, :==]
  end

  Plan 'CheckMaxBidSecondary' do #21_secondary
    Select items.nb_of_bids, items.max_bid
    Param  items.quantity, :==
    Lookup 'itemsid_by_quantity',[items.quantity, :==]
    Lookup 'items', [items.id, :==]
  end

  Plan 'AddBid' do
    Support do
      Plan 'GetMaxBid' do 
        Select items.max_bid
        Param  items.id, :==
        Lookup 'items', [items.id, :==]
      end
    end

    Param  items.id, :==
    Param  items.max_bid, :==
    Insert 'items', items.id, items.max_bid
  end

  Plan 'AddToBids' do
    Param  bids.id, :==
    Param  bids.qty, :==
    Param  bids.bid, :==
    Param  bids.date, :==
    Param  users.id, :==
    Insert 'bids'
  end

  Plan 'AddToItemBids' do
    Param  items.id, :==
    Param  bids.id, :==
    Insert 'bids_by_item'
  end

  Plan 'AddToItemBidsQuantity' do
    Param items.quantity, :==
    Param bids.id, :==
    Insert 'bids_by_itemquantity'
  end

  Plan 'AddToItemsidQuentity' do
    Param items.quantity, :==
    Param items.id, :==
    Insert 'itemsid_by_quantity'
  end

  Plan 'AddToUserBids' do
    Param  users.id, :==
    Param  bids.id, :==
    Param  bids.date, :==
    Insert 'bids_by_user'
  end

  Plan 'AddToUserBidsRating' do
    Param users.rating, :==
    Param bids.date, :==
    Param bids.id, :==
    Insert 'bids_by_userrating'
  end
end

Group 'PutComment', bidding: 0.46,
      write_medium: 0.46,
      write_heavy: 0.46 do
  Plan 'Authentication' do #23
    Select users.password,users.nickname
    Param  users.id, :==
    Lookup 'users', [users.id, :==]
  end

  Plan 'AuthenticationSecondary' do #23_secondary
    Select users.password,users.nickname
    Param  users.rating, :==
    Lookup 'usersid_by_rating',[users.rating, :==]
    Lookup 'users', [users.id, :==]
  end

  Plan 'ItemData' do #24
    Select items['*']
    Param  items.id, :==
    Lookup 'items', [items.id, :==]
  end

  Plan 'ItemDataSecondary' do #24_secondary
    Select items['*']
    Param  items.quantity, :==
    Lookup 'itemsid_by_quantity',[items.quantity,:==]
    Lookup 'items', [items.id, :==]
  end

  Plan 'UserData' do #25
    Select users['*']
    Param  users.id, :==
    Lookup 'users', [users.id, :==]
  end

  Plan 'UserDataSecondary' do #25_secondary
    Select users['*']
    Param  users.rating, :==
    Lookup 'usersid_by_rating',[users.rating,:==]
    Lookup 'users', [users.id, :==]
  end
end

Group 'StoreComment', bidding: 0.45,
      write_medium: 0.45 * 10,
      write_heavy: 0.45 * 100 do
  Plan 'UpdateRating' do
    Support do
      Plan 'GetRating' do 
        Select users.rating, regions.id
        Param  users.id, :==
        Lookup 'users', [users.id, :==]
      end
    end

    Param  users.id, :==
    Param  users.rating, :==
    Insert 'users', users.id, regions.id, users.rating
  end

  Plan 'GetRatingSecondary' do
    Select users.rating, regions.id
    Param  users.rating, :==
    Lookup 'usersid_by_rating',[users.rating, :==]
    Lookup 'users', [users.id, :==]
  end

  Plan 'InsertComment' do
    Param  comments.id, :==
    Param  comments.rating, :==
    Param  comments.date, :==
    Param  comments.comment, :==
    Insert 'comments'
  end

  Plan 'AddToUserComments' do
    Param  users.id, :==
    Param  comments.id, :==
    Insert 'comments_by_user'
  end

  Plan 'AddToUserCommentsRating' do
    Param  users.rating, :==
    Param  comments.id, :==
    Insert 'comments_by_userrating'
  end

  Plan 'AddToUserRating' do
    Param  users.rating, :==
    Param  users.id, :==
    Insert 'usersid_by_rating'
  end
end

Group 'AboutMe', bidding: 1.71,
      write_medium: 1.71,
      write_heavy: 1.71 do
  Plan 'UserData' do #29
    Select users['*']
    Param  users.id, :==
    Lookup 'users', [users.id, :==]
  end

  Plan 'UserDataSecondary' do #29_secondary
    Select users['*']
    Param  users.rating, :==
    Lookup 'usersid_by_rating', [users.rating, :==]
    Lookup 'users', [users.id, :==]
  end

  Plan 'UserNicknameFromCommentId' do
    Select users.nickname
    Param comments.id, :==
    Lookup 'user_by_comments',[comments.id, :==]
    Lookup 'users',[users.id, :==]
  end

  Plan 'UserNicknameFromCommentIdSecondary' do #31_secondary
    Select users.nickname
    Param comments.rating, :==
    Lookup 'user_by_commentsrating',[comments.rating, :==]
    Lookup 'users',[users.id, :==]
  end


  Plan 'CommentsReceived' do
    Select comments['*']
    Param  users.id, :==
    Lookup 'comments_by_user', [users.id, :==]
    Lookup 'comments', [comments.id, :==]
  end

  Plan 'CommentsReceivedSecondary' do
    Select comments['*']
    Param  users.rating, :==
    Lookup 'comments_by_userrating', [users.rating, :==]
    Lookup 'comments', [comments.id, :==]
  end

  Plan 'BuyNow' do
    Select  items['*']
    Param   users.id, :==
    Param   buynow.date, :>=
    Lookup 'buynow_by_user', [users.id, :==], [buynow.date, :>=]
    Lookup 'buynow', [buynow.id, :==]
    Lookup 'items', [items.id, :==]
  end

  Plan 'BuyNowSecondary' do #32_secondary
    Select  items['*']
    Param   users.rating, :==
    Param   buynow.date, :>=
    Lookup 'buynow_by_userrating', [users.rating, :==], [buynow.date, :>=]
    Lookup 'buynow', [buynow.id, :==]
    Lookup 'items', [items.id, :==]
  end

  Plan 'ItemsSold' do #33
    Select  items['*']
    Param   users.id, :==
    Param   items.end_date, :>=
    Lookup 'user_items_sold', [users.id, :==], [items.end_date, :>=]
    Lookup 'items', [items.id, :==]
  end

  Plan 'ItemsSoldSecondary' do #33_secondary
    Select  items['*']
    Param   users.rating, :==
    Param   items.end_date, :>=
    Lookup 'user_items_soldrating', [users.rating, :==], [items.end_date, :>=]
    Lookup 'items', [items.id, :==]
  end

  Plan 'ItemsBid' do #34
    Select items['*'], bids.id
    Param  users.id, :==
    Param  bids.date, :>=
    Lookup 'bids_by_user', [users.id, :==], [bids.date, :>=]
    Lookup 'bids', [bids.id, :==]
    Lookup 'items', [items.id, :==]
  end

  Plan 'ItemsBidSecondary' do #34_secondary
    Select items['*'], bids.id
    Param  users.rating, :==
    Param  bids.date, :>=
    Lookup 'bids_by_userrating', [users.rating, :==], [bids.date, :>=]
    Lookup 'bids', [bids.id, :==]
    Lookup 'items', [items.id, :==]
  end
end

  Group 'SearchItemsByRegion', browsing: 8.26,
        bidding: 6.34,
        write_medium: 6.34,
        write_heavy: 6.34 do
    Plan 'ItemList' do #35
      Select items['*']
      Param  regions.id, :==
      Param  categories.id, :==
      Param  items.end_date, :>=
      Lookup 'items_by_region',
             [regions.id, :==],
             [categories.id, :==],
             [items.end_date, :>=], limit: 25
      Lookup 'items', [items.id, :==]
    end
  end

  Group 'BrowseRegions', browsing: 3.21,
        bidding: 5.39,
        write_medium: 5.39,
        write_heavy: 5.39 do
    Plan 'Regions' do #36
      Select regions['*']
      Param  regions.dummy, :==, 1
      Lookup 'all_regions', [regions.dummy, :==]
      Lookup 'regions', [regions.id, :==]
    end
  end
end

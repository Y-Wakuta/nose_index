# frozen_string_literal: true
# rubocop:disable all

NoSE::Model.new do
  # Define entities along with the size and cardinality of their fields
  # as well as an estimated number of each entity
  # yusuke IDって書けばprimary keyだと認識してくれるという仮定の元に一旦作る

  (Entity 'warehouse' do
    ID     'w_id'
    String 'w_name', 10
    String 'w_street_1', 20
    String 'w_street_2', 20
    String 'w_city', 20
    String 'w_state', 2
    String 'w_zip', 9
    Float  'w_tax'
    Float  'w_ytx'
  end) * 50

  (Entity 'district' do
    ID      'd_id'
    ID      'd_w_id', count: 1
    String  'd_name', 10
    String  'd_street_1', 20
    String  'd_street_2', 20
    String  'd_city', 20
    String  'd_state', 2
    String  'd_zip', 9
    Integer 'd_tax'
    Integer 'd_ytx'
    Integer 'd_next_o_id'
  end) * 5

  (Entity 'customer' do
    ID        'c_id'
    ID        'c_d_id'
    ID        'c_w_id'
    String    'c_first', 16
    String    'c_middle', 2
    String    'c_last', 16
    String    'c_street_1', 20
    String    'c_street_2', 20
    String    'c_city', 20
    String    'c_state', 2
    String    'c_zip', 9
    String    'c_phone', 16
    Date      'c_since'
    String    'c_credit', 2
    Integer   'c_credit_lim'
    Float     'c_discount'
    Float     'c_balance'
    Float     'c_ytd_payment'
    Integer   'c_payment_cnt'
    Integer   'c_delivery_cnt'
    String    'c_data'
  end) * 2_000

  (Entity 'history' do
    Integer    'h_c_id'
    Integer    'h_c_d_id'
    Integer    'h_c_w_id'
    Integer    'h_d_id'
    Integer    'h_w_id'
    Float      'h_amount'
    String     'h_data',24
  end) * 20_000

  (Entity 'new_orders' do
    ID         'no_o_id'
    ID         'no_d_id'
    ID         'no_w_id'
  end) * 200_000

  (Entity 'orders' do
    ID         'o_o_id'
    ID         'o_d_id'
    ID         'o_w_id'
    Integer    'o_c_id'
    Date       'o_entry_d'
    Integer    'o_carrier_id'
    Integer    'o_ol_cnt'
    Integer    'o_all_local'
  end) * 100_000

  (Entity 'order_line' do
    ID         'ol_o_id'
    ID         'ol_d_id'
    ID         'ol_w_id'
    ID         'ol_number'
    Integer    'ol_i_id'
    Integer    'ol_supply_w_id'
    Date       'ol_delivery_d'
    Integer    'ol_quantity'
    Float      'ol_amount'
    String     'ol_dist_info',24
  end) * 40_000


  (Entity 'item' do
    ID         'i_id'
    Integer    'i_im_id'
    String     'i_name'
    Float      'i_price'
    String     'i_data',50
  end) * 200_000

  (Entity 'stock' do
    ID         's_i_id'
    ID         's_w_id'
    Integer    's_quantity'
    String     's_dict_01',24
    String     's_dict_02',24
    String     's_dict_03',24
    String     's_dict_04',24
    String     's_dict_05',24
    String     's_dict_06',24
    String     's_dict_07',24
    String     's_dict_08',24
    String     's_dict_09',24
    String     's_dict_10',24
    Float      's_ytd'
    Float      's_order_cnt'
    Float      's_remote_cnt'
    String     's_data',50
  end)

  HasOne 'new_orders',       'orders',
         'new_orders'      => 'orders'

  HasOne 'order_line',       'orders',
         'order_line'      => 'orders'

  HasOne 'order_line',     'stock',
         'order_line'      => 'stock'

  HasOne 'stock',         'warehouse',
         'stock'       => 'warehouse'

  HasOne 'stock',         'item',
         'stock'       => 'item'

  HasOne 'orders',    'customer',
         'orders'   => 'customer'

  HasOne 'district',      'warehouse',
         'district'   => 'warehouse'

  HasOne 'customer',         'district',
         'customer'   => 'district'

  HasOne 'history',        'district',
         'history'     => 'district'

  HasOne 'history',         'customer',
         'history'     => 'customer'
end

# rubocop:enable all

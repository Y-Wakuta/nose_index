# frozen_string_literal: true

NoSE::Workload.new do
  Model 'rubis'

  # Define queries and their relative weights, weights taken from below
  # http://rubis.ow2.org/results/SB-BMP/Bidding/JBoss-SB-BMP-Bi-1500/perf.html#run_stat
  # http://rubis.ow2.org/results/SB-BMP/Browsing/JBoss-SB-BMP-Br-1500/perf.html#run_stat
  DefaultMix :write_heavy#ここのbrowsingをbiddingとかに書き換えることでより多くのqueryに対してテストできそう
  #biddingの容量下限は 108000000
  # browsingは52676935

  Group 'NewOrder',
        basic: 10 do
    Q 'SELECT c_discount, c_last, c_credit, w_tax FROM customer, warehouse WHERE w_id = ? AND c_w_id = w_id AND c_d_id = ? AND c_id = ? -- 0'
    Q 'SELECT d_next_o_id, d_tax FROM district WHERE d_id = ? AND d_w_id = ? -- 1'
    Q 'UPDATE district SET d_next_o_id = ? + 1 WHERE d_id = ? AND d_w_id = ? -- 2'
    Q 'INSERT INTO orders (o_id, o_d_id, o_w_id, o_c_id, o_entry_d, o_ol_cnt, o_all_local) VALUES(?, ?, ?, ?, ?, ?, ?) --3'
    Q 'INSERT INTO new_orders (no_o_id, no_d_id, no_w_id) VALUES (?,?,?) --4'
    Q 'SELECT i_price, i_name, i_data FROM item WHERE i_id = ? --5'
    Q 'SELECT s_quantity, s_data, s_dist_01, s_dist_02, s_dist_03, s_dist_04, s_dist_05, s_dist_06, s_dist_07, s_dist_08, s_dist_09, s_dist_10 FROM stock WHERE s_i_id = ? AND s_w_id = ? --6'
    Q 'UPDATE stock SET s_quantity = ? WHERE s_i_id = ? AND s_w_id = ? --7'
    Q 'INSERT INTO order_line (ol_o_id, ol_d_id, ol_w_id, ol_number, ol_i_id, ol_supply_w_id, ol_quantity, ol_amount, ol_dist_info) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?) --8'
  end

  Group 'Payment',
        basic: 10 do
    Q 'UPDATE warehouse SET w_ytd = w_ytd + ? WHERE w_id = ? --9'
    Q 'SELECT w_street_1, w_street_2, w_city, w_state, w_zip, w_name FROM warehouse WHERE w_id = ? --10'
    Q 'UPDATE district SET d_ytd = d_ytd + ? WHERE d_w_id = ? AND d_id = ? --11'
    Q 'SELECT d_street_1, d_street_2, d_city, d_state, d_zip, d_name FROM district WHERE d_w_id = ? AND d_id = ? --12'
    Q 'SELECT count(c_id) FROM customer WHERE c_w_id = ? AND c_d_id = ? AND c_last = ? --13'
    Q 'SELECT c_id FROM customer WHERE c_w_id = ? AND c_d_id = ? AND c_last = ? ORDER BY c_first --14'
    Q 'SELECT c_first, c_middle, c_last, c_street_1, c_street_2, c_city, c_state, c_zip, c_phone, c_credit, c_credit_lim, c_discount, c_balance, c_since FROM customer WHERE c_w_id = ? AND c_d_id = ? AND c_id = ? --15'
    Q 'SELECT c_data FROM customer WHERE c_w_id = ? AND c_d_id = ? AND c_id = ? --16'
    Q 'UPDATE customer SET c_balance = ?, c_data = ? WHERE c_w_id = ? AND c_d_id = ? AND c_id = ? --17'
    Q 'UPDATE customer SET c_balance = ? WHERE c_w_id = ? AND c_d_id = ? AND c_id = ? --18'
    Q 'INSERT INTO history(h_c_d_id, h_c_w_id, h_c_id, h_d_id, h_w_id, h_date, h_amount, h_data) VALUES(?, ?, ?, ?, ?, ?, ?, ?) --19'
  end

  Group 'OrderStat',
        basic: 1 do
    Q 'SELECT count(c_id) FROM customer WHERE c_w_id = ? AND c_d_id = ? AND c_last = ? --20'
    Q 'SELECT c_balance, c_first, c_middle, c_last FROM customer WHERE c_w_id = ? AND c_d_id = ? AND c_last = ? ORDER BY c_first --21'
    Q 'SELECT c_balance, c_first, c_middle, c_last FROM customer WHERE c_w_id = ? AND c_d_id = ? AND c_id = ? --22'
    Q 'SELECT o_id, o_entry_d, COALESCE(o_carrier_id,0) FROM orders WHERE o_w_id = ? AND o_d_id = ? AND o_c_id = ? AND o_id = (SELECT MAX(o_id) FROM orders WHERE o_w_id = ? AND o_d_id = ? AND o_c_id = ?) --23'
    Q 'SELECT ol_i_id, ol_supply_w_id, ol_quantity, ol_amount, ol_delivery_d FROM order_line WHERE ol_w_id = ? AND ol_d_id = ? AND ol_o_id = ? --24'
  end

  Group 'Delivery',
        basic: 1 do
    Q 'SELECT COALESCE(MIN(no_o_id),0) FROM new_orders WHERE no_d_id = ? AND no_w_id = ? --25'
    Q 'DELETE FROM new_orders WHERE no_o_id = ? AND no_d_id = ? AND no_w_id = ? --26'
    Q 'SELECT o_c_id FROM orders WHERE o_id = ? AND o_d_id = ? AND o_w_id = ? --27'
    Q 'UPDATE orders SET o_carrier_id = ? WHERE o_id = ? AND o_d_id = ? AND o_w_id = ? --28'
    Q 'UPDATE order_line SET ol_delivery_d = ? WHERE ol_o_id = ? AND ol_d_id = ? AND ol_w_id = ? --29'
    Q 'SELECT SUM(ol_amount) FROM order_line WHERE ol_o_id = ? AND ol_d_id = ? AND ol_w_id = ? --30'
    Q 'UPDATE customer SET c_balance = c_balance + ? , c_delivery_cnt = c_delivery_cnt + 1 WHERE c_id = ? AND c_d_id = ? AND c_w_id = ? --31'
    Q 'SELECT d_next_o_id FROM district WHERE d_id = ? AND d_w_id = ? --32'
  end

  Group 'Slev',
        basic: 1 do
    Q 'SELECT d_next_o_id FROM district WHERE d_id = ? AND d_w_id = ? --33'
    Q 'SELECT DISTINCT ol_i_id FROM order_line WHERE ol_w_id = ? AND ol_d_id = ? AND ol_o_id < ? AND ol_o_id >= (? - 20) --34'
    Q 'SELECT count(*) FROM stock WHERE s_w_id = ? AND s_i_id = ? AND s_quantity < ? --35'
  end
end

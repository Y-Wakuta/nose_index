#yusuke index系列を受け取って{column_family_id => has_index}のhashを返す関数です
class CreateIndex
  #yusuke 試しにsecondary indexに置き換えるかどうか判断するメソッドを作成してみる。
  # index.all_fields-index.hash_fields-index.order_fields の数が一定値以上なら置き換えるにしよう。ひとまず、今は1つ以上あれば置き換えるコードで。
  def is_replace_2nd_index(index)
    non_key_field_num_threshold = 0
    non_key_fields = index.all_fields.length - index.hash_fields.length - index.order_fields.length
    non_key_fields > non_key_field_num_threshold
  end

  def get_MySQL_table_name_by_index(index)
    index.hash_fields.first.to_s.split('.').first
  end

  def get_has_index_hash(indexes)
    indexes = indexes.to_a.sort_by do |i| #yusuke ここでtable名でsortし、それぞれのtable名の中でfieldの数が降順に並ぶようにする
      [get_MySQL_table_name_by_index(i),i.all_fields.length]
    end.reverse!
    table_name = ""
    fields = Set.new
    has_index = {}
    indexes.each do |index|
      mySQL_table_name = get_MySQL_table_name_by_index(index)
      next has_index[index.key]= false if !is_replace_2nd_index index #yusuke 単体のindexとして置き換えるメリットが無い場合、弾く

      #yusuke 作成するcolumn familyが初めてのテーブルに対するものならindexは作成しないので返す
      if table_name != mySQL_table_name then
        fields = index.all_fields
        table_name = mySQL_table_name
        next has_index[index.key] = false
      end

      #yusuke 同じテーブル名を持ち、fieldsがfield数最大のものの部分集合でない場合indexを作成しない
      if !fields.superset? index.all_fields then
        next has_index[index.key] = false
      end

      next has_index[index.key] = true #yusuke 上記の条件を全てクリアした場合、index作成
    end
    has_index
  end
end

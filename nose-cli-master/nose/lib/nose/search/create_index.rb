#yusuke index系列を受け取って{column_family_id => has_index}のhashを返す関数です
class CreateIndex
  def initialize(indexes)
    @indexes = indexes
    @table_names = [] #yusuke queryの中で言及されていたtable名を記録します
    @pkeys = []
  end

  #yusuke 試しにsecondary indexに置き換えるかどうか判断するメソッドを作成してみる。
  # index.all_fields-index.hash_fields-index.order_fields の数が一定値以上なら置き換えるにしよう。ひとまず、今は1つ以上あれば置き換えるコードで。
  def is_replace_2nd_index(index)
    non_key_field_num_threshold = 0
    non_key_fields = index.all_fields.length - index.hash_fields.length - index.order_fields.length
    non_key_fields > non_key_field_num_threshold
  end

  #yusuke secondary indexとして置き換えるには、置き換えるクエリのselect句の中身が、実テーブルの中に含まれている必要があるのでそれを確認する
  def is_column_included()
    #yusuke それぞれのindex.all_fieldsの間でSet#superset?をとる
  end

  def get_MySQL_primary_key_by_index(index)
    index.hash_fields.first.to_s
  end

  #yusuke 同じmysql上のテーブルに言及しているindexの名前を記録しておいて返します
  def is_make_index(index)
    mySQL_table_name = get_MySQL_primary_key_by_index(index).split('.').first
    mySQL_primary_member = get_MySQL_primary_key_by_index(index).split('.').last
    if @table_names.empty? || !@table_names.map{|tn| tn[:table_name]}.include?(mySQL_table_name) then
      h = {table_name: mySQL_table_name,primary_mem: mySQL_primary_member,column_id: index.key}
      @table_names.append h
      return false #yusuke 作成するcolumn familyが初めてのテーブルに対するものならindexは作成しないので返す
    end

    return false if !is_replace_2nd_index index #yusuke indexに置き換えることでメリットがあると判断した場合、このif文には入らない

    return !@table_names.select {|tn| tn[:table_name] == mySQL_table_name}.empty? #yusuke secondary indexを貼る対象のkeyを取得する
  end

  def get_has_index_hash
    has_index_hash = {}
    @indexes.each do |index|
       has_index_hash[index.key] = is_make_index(index)
    end
    has_index_hash
  end
end

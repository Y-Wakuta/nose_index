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

  #secondary indexとして置き換えるには、置き換えるクエリのselect句の中身が、実テーブルの中に含まれている必要があるのでそれを確認する
  def is_column_included()
    #TODO
  end

  def get_MySQL_table_name_by_index(index)
    index.hash_fields.first.to_s.split('.').first
  end

  #yusuke 同じmysql上のテーブルに言及しているindexの名前を記録しておいて返します
  def is_make_index(index)
    mySQL_table_name = get_MySQL_table_name_by_index(index)
    if @table_names.empty? || !@table_names.transpose[0].include?(mySQL_table_name) then
      @table_names.append [mySQL_table_name,index.key]
      return false #yusuke 作成するcolumn familyが初めてのテーブルに対するものならindexは作成しないので返す
    end

    return false if !is_replace_2nd_index index #yusuke indexに置き換えることでメリットがあると判断した場合、このif文には入らない

    if @pkeys.empty? ||  @pkeys.include?(mySQL_table_name) then
      @pkeys.append(mySQL_table_name)
      return !@table_names.select {|tn| tn[0] == mySQL_table_name}.first[1].empty? #yusuke secondary indexを貼る対象のkeyを取得する
    end
    false
  end

  def get_has_index_hash
    has_index_hash = {}
    @indexes.each do |index|
       has_index_hash[index.key] = is_make_index(index)
    end
    has_index_hash
  end
end

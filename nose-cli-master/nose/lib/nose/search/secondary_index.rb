
# yusuke extension作成用
class CreateIndex
  
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
    indexes = indexes.to_a.sort_by do |i| 
      [get_MySQL_table_name_by_index(i),i.all_fields.length]
    end.reverse!
    table_name = ""
    fields = Set.new
    has_index_array =  indexes.map do |index|
      mySQL_table_name = get_MySQL_table_name_by_index(index)
      next HasIndex.new(index.key,false,nil) if !is_replace_2nd_index index 

      
      if table_name != mySQL_table_name then
        fields = index.all_fields
        table_name = mySQL_table_name
        next HasIndex.new(index.key,false,nil)
      end

      
      if !fields.superset? index.all_fields then
        next HasIndex.new(index.key, false,nil)
      end

      #secondary indexを作成する際に、どのテーブルを実テーブルとして使用するか取得する
      parent_table_id = indexes.select{|i| get_MySQL_table_name_by_index(i) == mySQL_table_name }.first.key

      next HasIndex.new(index.key,true,parent_table_id) 
    end
    has_index_array
  end
end


#indexがsecondary indexを持つかどうかを保持するためのclass
class HasIndex
  attr_accessor :index_key,:index_value,:parent_table_id

  def initialize(key,value,parent_table_id)
    @index_key =key
    @index_value = value
    @parent_table_id = parent_table_id
  end

  def add_parent_table(additional_base_cf)
    @parent_table_id += ("," + additional_base_cf)
  end

  def hash
    (@index_key.to_s + @parent_table_id.to_s).hash
  end

  def ==(other)
    return true if @index_key == other.index_key and @parent_table_id == other.parent_table_id
  end

  def eql?(other)
    self == other
  end
end

#coding: UTF-8

require 'mysql'

DATABASE_HOST='10.0.16.7'
DATABASE_USERNAME='root'
DATABASE_PASSWORD='root'
DATABASE_SCHEMA='normal'


db = Mysql::new(DATABASE_HOST,DATABASE_USERNAME,DATABASE_PASSWORD,DATABASE_SCHEMA)
db.query("show tables;").each do |table|
  #db.query("show columns from #{table[0]}").each do |column|
    db.query("SELECT count(*) FROM #{table[0]}").each do |res|
      p "#{table[0]}: #{res[0]}"
    end
#  end
  p "==============================="
end

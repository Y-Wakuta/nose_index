#coding: UTF-8

require 'mysql'

DATABASE_HOST='127.0.0.1'
DATABASE_USERNAME='root'
DATABASE_PASSWORD='root'
DATABASE_SCHEMA='one_half'


db = Mysql::new(DATABASE_HOST,DATABASE_USERNAME,DATABASE_PASSWORD,DATABASE_SCHEMA)
db.query("show tables;").each do |table|
  db.query("show columns from #{table[0]}").each do |column|
    db.query("SELECT count(distinct(#{column[0]})) FROM #{table[0]}").each do |res|
      p "#{table[0]}.#{column[0]}: #{res[0]}"
    end
  end
  p "==============================="
end

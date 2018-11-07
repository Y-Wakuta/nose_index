#!/bin/bash

cd ../nose-cli-master

if [ "$1" = "" ]
then
    echo "no argument"
    exit 0
fi

first_size=45074445
last_size=$(($first_size*2)) #単純に開始のsizeから三倍のサイズまで実行したら終了
output_file="size_constraint_bench"
dir_name="../size_constraint_bench/$1"

mkdir $dir_name
for size in $(seq $first_size 3000000 $last_size)
do
  echo "run for ${size}"
  file_name="${dir_name}/${output_file}_${size}.txt"
  touch $file_name
  bundle exec nose search rubis --max_space $size >& $file_name
done

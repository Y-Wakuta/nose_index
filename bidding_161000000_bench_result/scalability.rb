require "gnuplot"
require "csv"

#いれておくと、あとあと助かる機能
# * 各csvファイルについて、全体の期待値のグラフも生成する
# * タイトルからディレクトリを作成してその下に全てのグラフを吐き出すようにする。
# * グラフにタイトルは付けないので、なんのデータかファイル名で分かるようにする
# * 各トランザクションをNoSEの結果が遅い順に左からソートする
# * NoSEの全てのクエリの中で最も遅いものを提案手法でどの程度まで短縮できたかをコンソールに表示

class Array
  def mean
    sum.to_f / size
  end
end

def plot_scalability(x,y,z)
  Gnuplot.open() do |gp|
    Gnuplot::Plot.new( gp ) do |plot|
      plot.ylabel "Query Latency [s]"
      plot.xlabel "Cassandra nodes"
      #      plot.set "terminal 'aqua'"
      plot.xrange "[:]"
      plot.yrange "[0:]"
      plot.size "0.80,1.0"
      #plot.style "data lines"
      #plot.set 'terminal postscript color eps enhanced "GothicBBB-Medium-EUC-H" 20 size 10cm,5cm'
#      plot.set 'terminal postscript eps enhanced color font "VL PGothic,20" enhanced '
      plot.set 'terminal postscript color eps enhanced font "Helvetica,13" size 8cm,4cm'
      #      plot.set 'terminal pdf'
      plot.set 'boxwidth 0.8'
      plot.set "output 'output_scalability.eps'"
      plot.set "style histogram clustered"
      #plot.set "logscale y"
      #plot.set "autoscale fixmin"
      plot.set "grid ytics"
      plot.set "xtics offset first 0.1,0"
      plot.set "style fill solid border lc rgb"
      plot.data << Gnuplot::DataSet.new( [x, y] ) do |ds|
        ds.with = 'histogram'
        ds.linecolor = "30"
        ds.title = "Prop."
        ds.using = "2:xtic(1)"
      end
      plot.data << Gnuplot::DataSet.new( [x, z] ) do |ds|
        ds.with = 'histogram'
        #ds.linecolor = "black"
        ds.title = "NoSE"
        ds.using = "2:xtic(1)"
      end
    end
  end
end


def get_mean(csv,group_weight_hash)
  weight_sum = 0
  mean_by_freq = csv.map do |row|
    weight = group_weight_hash[row["group"]].to_f
    weight_sum += weight
    row["mean"].to_f * weight 
  end.sum
  return mean_by_freq / weight_sum
end

def get_group_weight_hash(csv)
  csv.group_by{|row| row["group"]}.map do |group|
    {group[0] => group[1][0]["weight"]}
  end.inject(:merge)
end

def get_scalabiilty(nose_1_csv,nose_index_1_csv,nose_10_csv,nose_index_10_csv,nose_20_csv,nose_index_20_csv)
  group_weight_hash = get_group_weight_hash nose_1_csv
  nose_1=  get_mean(nose_1_csv,group_weight_hash)
  nose_index_1=  get_mean(nose_index_1_csv,group_weight_hash)
  nose_10=  get_mean(nose_10_csv,group_weight_hash)
  nose_index_10=  get_mean(nose_index_10_csv,group_weight_hash)
  nose_20=  get_mean(nose_20_csv,group_weight_hash)
  nose_index_20=  get_mean(nose_index_20_csv,group_weight_hash)

  plot_scalability([1,10,20],[nose_index_1,nose_index_10,nose_index_20],[nose_1,nose_10,nose_20])
end


nose_1_node = CSV.read(ARGV[0],headers: true)
nose_index_1_node = CSV.read(ARGV[1],headers: true)
nose_10_node = CSV.read(ARGV[2],headers: true)
nose_index_10_node = CSV.read(ARGV[3],headers: true)
nose_20_node = CSV.read(ARGV[4],headers: true)
nose_index_20_node = CSV.read(ARGV[5],headers: true)

get_scalabiilty(nose_1_node,nose_index_1_node,nose_10_node,nose_index_10_node,nose_20_node,nose_index_20_node)

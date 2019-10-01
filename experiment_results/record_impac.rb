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

def plot_mean(names,noses,nose_indexes,y_title,title)
   Gnuplot.open() do |gp|
    Gnuplot::Plot.new( gp ) do |plot|
      plot.ylabel "Query Latency [s]"
      plot.xrange "[:]"
      plot.yrange "[0:]"
      #plot.size "1.0,1.0"
      plot.size "1,0.68"
      #plot.style "data lines"
      plot.set 'terminal postscript color eps enhanced font "Helvetica,13" size 12cm,11cm'
#      plot.set 'terminal postscript color eps enhanced font "Meiryo,18"'  #Ryumin-Light-EUC-H,7"'#size 16cm,8cm'
      #plot.set 'terminal pdf mono'
      plot.set 'boxwidth 0.5'
      plot.set "output 'output_#{title}.eps'"
      plot.set "style histogram clustered"
      plot.set "grid ytics"
       plot.set "style fill solid border lc rgb"
 #    plot.set "style fill solid border "
#      plot.set "style fill solid border lc rgb"
      plot.set "xtics offset first 0.1,0"

      plot.data << Gnuplot::DataSet.new( [names, nose_indexes] ) do |ds|
         ds.linecolor = "30"
        ds.with = 'histogram'
        ds.title = "Prop."
        ds.using = "2:xtic(1)"
      end
      plot.data << Gnuplot::DataSet.new( [names, noses] ) do |ds|
        ds.with = 'histogram'
        ds.title = "NoSE"
        ds.using = "2:xtic(1)"
      end
    end
   end
end

def get_mean(csv)
  return csv.map{|row| row["mean"].to_f}.mean
end

def plot_whole_latency(half_nose_csv,half_nose_index_csv,normal_nose_csv,normal_nose_index_csv,one_half_nose_csv,one_half_nose_index_csv)
  half_nose = get_mean(half_nose_csv)
  half_nose_index = get_mean(half_nose_index_csv)

  normal_nose = get_mean(normal_nose_csv)
  normal_nose_index = get_mean(normal_nose_index_csv)

  one_half_nose = get_mean(one_half_nose_csv)
  one_half_nose_index = get_mean(one_half_nose_index_csv)
  
  plot_mean(["x0.5","x1","x1.5"],[half_nose,normal_nose,one_half_nose],[half_nose_index,normal_nose_index,one_half_nose_index],"latency","record_impac")
  get_sum_statics(half_nose, half_nose_index, normal_nose, normal_nose_index,one_half_nose, one_half_nose_index)
end



def get_sum_statics(half_nose, half_nose_index, normal_nose, normal_nose_index,one_half_nose, one_half_nose_index)
  puts("half: ", (half_nose - half_nose_index) / half_nose)
  puts("normal: ", (normal_nose - normal_nose_index) / normal_nose)
  puts("half: ", (one_half_nose - one_half_nose_index) / one_half_nose)
end

half_nose_csv = CSV.read(ARGV[0],headers: true)
half_nose_index_csv = CSV.read(ARGV[1],headers: true)

normal_nose_csv = CSV.read(ARGV[2],headers: true)
normal_nose_index_csv = CSV.read(ARGV[3],headers: true)

one_half_nose_csv = CSV.read(ARGV[4],headers: true)
one_half_nose_index_csv = CSV.read(ARGV[5],headers: true)

plot_whole_latency(half_nose_csv, half_nose_index_csv, normal_nose_csv, normal_nose_index_csv,one_half_nose_csv, one_half_nose_index_csv)




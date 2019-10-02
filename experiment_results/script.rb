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

def plot_transaction(x,y,z,alpha,y_title,z_title,alpha_title,title)
  Gnuplot.open() do |gp|
    Gnuplot::Plot.new( gp ) do |plot|
#      plot.set "terminal 'aqua'"
      plot.xrange "[:]"
      plot.yrange "[0:]"
      plot.size "0.8,0.75"
      #plot.style "data lines"
      #plot.set 'terminal postscript color eps enhanced font "Helvetica,13" size 15cm,7cm' #resume
      #plot.set 'terminal postscript color eps enhanced font "Helvetica,13" size 20cm,9cm' #xsig
      #plot.set 'term postscript color eps enhanced font "GothicBBB-Medium-UniJIS-UTF8-H,12" size 20cm,9cm'
      plot.set 'term postscript color eps enhanced font "GothicBBB-Medium-UniJIS-UTF8-H,12" size 15cm,9cm' #DEIM スライド
      #plot.set 'terminal postscript color eps enhanced font "Helvetica,13" size 13cm,7cm' #卒論
 #     plot.set 'terminal postscript color eps enhanced font "Helvetica,13" size 12cm,5cm' #卒論スライド
#      plot.set 'terminal postscript color eps enhanced font "Meiryo,18"'  #Ryumin-Light-EUC-H,7"'#size 16cm,8cm'
#      plot.set 'terminal pdf'
      #plot.ylabel "Query Latency [ms]"
      plot.ylabel "平均応答時間 [ms]"
      plot.set 'boxwidth 0.8'
      plot.set "output 'output_#{title}.eps'"
      plot.set 'xtics rotate by -50 font "Arial,7"'
      plot.set "style histogram clustered"
      plot.set "logscale y"
      #plot.set "autoscale fixmin"
      plot.set "grid ytics"
#      plot.set "style fill solid border lc rgb"
      plot.set "style fill solid border lc rgb"
      plot.data << Gnuplot::DataSet.new( [x, y] ) do |ds|
        ds.with = 'histogram'
        ds.linecolor = "20"
        ds.title = y_title
        ds.using = "2:xtic(1)"
      end
       plot.data << Gnuplot::DataSet.new( [x, z] ) do |ds|
        ds.with = 'histogram'
        ds.linecolor = "30"
        ds.title = z_title
        ds.using = "2:xtic(1)"
       end
      plot.data << Gnuplot::DataSet.new( [x, alpha] ) do |ds|
        ds.with = 'histogram'
        ds.linecolor = "50"
        ds.title = alpha_title
        ds.using = "2:xtic(1)"
      end
    end
  end
end

def get_averages(csv,x_groups = nil)
  groups = csv.group_by{|row| row["group"]}

  group_mean =  groups.map do |g|
    response_times = g[1].map{|s| s["mean"].to_f * 1000.0} #yusuke msに変更
    {g[0] => response_times.mean}
  end.inject(:merge)

  x_groups = group_mean.keys.sort_by { |k | group_mean[k] }.reverse if x_groups.nil?

  means = x_groups.map do |gm|
    group_mean[gm]
  end

  [x_groups,means]
end

def get_transaction_latency(nose_csv,nose_index_csv,baseline_csv)
  nose = get_averages nose_csv
  nose_index = get_averages nose_index_csv,nose[0]
  baseline  = get_averages baseline_csv,nose[0]
  plot_transaction(nose_index[0],nose_index[1],nose[1],baseline[1],"提案手法","NoSE","ベースライン","Response Time")
end

def plot_mean(names,values,y_title,title)
   Gnuplot.open() do |gp|
    Gnuplot::Plot.new( gp ) do |plot|
      plot.ylabel "頻度による重み付き平均応答時間 [s]"
      plot.xrange "[:]"
      plot.yrange "[0:340]"
      #plot.size "1.0,1.0"
      plot.size "1,0.71"
      #plot.style "data lines"
      #plot.set 'terminal postscript color eps enhanced font "Helvetica,13" size 7cm,7cm'
      plot.set 'term postscript color eps enhanced font "GothicBBB-Medium-UniJIS-UTF8-H,12"size 7cm,7cm'
      #plot.set 'terminal postscript color eps enhanced font "Meiryo,18" size 7cm, 7cm'  #Ryumin-Light-EUC-H,7"'#size 16cm,8cm'
      #plot.set 'terminal pdf mono'
      plot.set 'boxwidth 0.5'
      plot.set "output 'output_#{title}.pdf'"
      #plot.set "style histogram clustered"
      plot.set "grid ytics"
      plot.set "nokey"
      plot.set "style fill solid border lc rgb"
#      plot.set "style fill solid border lc rgb"
      plot.data << Gnuplot::DataSet.new( [names, values] ) do |ds|
        ds.with = 'boxes'
        ds.linecolor = "30"
        ds.title = y_title
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
 # return csv.map{|row| row["mean"].to_f}.mean
end

def get_group_weight_hash(csv)
  csv.group_by{|row| row["group"]}.map do |group|
    {group[0] => group[1][0]["weight"]}
  end.inject(:merge)
end

def plot_whole_latency(nose_csv,nose_index_csv, baseline_csv)
  group_weight_hash = get_group_weight_hash nose_csv
  nose = get_mean(nose_csv,group_weight_hash)
  nose_index = get_mean(nose_index_csv,group_weight_hash)
  baseline = get_mean(baseline_csv,group_weight_hash)
  plot_mean(["提案手法","NoSE","ベースライン"],[nose_index,nose,baseline],"latency","latency")
end

def get_sum_statics(nose_csv,nose_index_csv,baseline_csv)
  nose_slowest_query = nose_csv.sort_by { |row | row["mean"].to_f }.reverse.first
  nose_index_slowest_query = nose_index_csv.sort_by { |row | row["mean"].to_f }.reverse.first
  baseline_slowest_query = baseline_csv.sort_by { |row | row["mean"].to_f }.reverse.first
  print("=最も時間の掛かっているクエリ=====================\n")
  print("nose_slowest_query: ",nose_slowest_query, "\n")
  print("nose_index_slowest_query: ",nose_index_slowest_query, "\n")
  print("baseline_slowest_query: ",baseline_slowest_query, "\n")
  print("=最も遅いクエリの変化============================\n")
  print("nose: ",nose_slowest_query["mean"],"\n")
  print("nose_index: ",nose_index_slowest_query["mean"],"\n")
  print("baseline: ",baseline_slowest_query["mean"],"\n")
  print("=応答時間の期待値================================", "\n")
  nose_mean = get_mean(nose_csv,get_group_weight_hash(nose_csv))
  nose_index_mean = get_mean(nose_index_csv,get_group_weight_hash(nose_csv))
  baseline_mean = get_mean(baseline_csv,get_group_weight_hash(nose_csv))
  print("nose: ", nose_mean, "\n")
  print("nose_index: ", nose_index_mean, "\n")
  print("baseline: ", baseline_mean, "\n")
  print("base->noseindex: ",(baseline_mean - nose_index_mean) / baseline_mean, "\n")
  print("nose->noseindex: ",(nose_mean - nose_index_mean) / nose_mean, "\n")
end

nose_index_csv = CSV.read(ARGV[0],headers: true)
nose_csv = CSV.read(ARGV[1],headers: true)
baseline_csv = CSV.read(ARGV[2],headers: true)

get_transaction_latency(nose_csv, nose_index_csv, baseline_csv)

plot_whole_latency(nose_csv, nose_index_csv, baseline_csv)

get_sum_statics(nose_csv,nose_index_csv,baseline_csv)

#plot_query_update_latency(half_nose_csv, half_nose_index_csv, normal_nose_csv, normal_nose_index_csv,one_half_nose_csv, one_half_nose_index_csv)

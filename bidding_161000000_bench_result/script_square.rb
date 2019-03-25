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
      plot.ylabel "response time [ms]"
      plot.xlabel "transaction"
#      plot.set "terminal 'aqua'"
      plot.xrange "[:]"
      plot.yrange "[0:]"
      plot.size "0.9,0.9"
      #plot.style "data lines"
      plot.set 'terminal postscript color eps enhanced font "Helvetica,13" size 10,14cm'
#      plot.set 'terminal postscript color eps enhanced font "Meiryo,18"'  #Ryumin-Light-EUC-H,7"'#size 16cm,8cm'
#      plot.set 'terminal pdf'
      plot.set 'boxwidth 0.8'
      plot.set "output 'output_#{title}.eps'"
      plot.set "xtics rotate by -60"
      plot.set "style histogram clustered"
      plot.set "logscale y"
      #plot.set "autoscale fixmin"
      plot.set "grid ytics"
      plot.set "style fill solid border lc rgb"
      plot.data << Gnuplot::DataSet.new( [x, y] ) do |ds|
        ds.with = 'histogram'
        ds.linecolor = "30"
        ds.title = y_title
        ds.using = "2:xtic(1)"
      end
       plot.data << Gnuplot::DataSet.new( [x, z] ) do |ds|
        ds.with = 'histogram'
        #ds.linecolor = "black"
        ds.title = z_title
        ds.using = "2:xtic(1)"
       end
      plot.data << Gnuplot::DataSet.new( [x, alpha] ) do |ds|
        ds.with = 'histogram'
        #ds.linecolor = "black"
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
  plot_transaction(nose_index[0],nose_index[1],nose[1],baseline[1],"Prop.","NoSE","Baseline","Response Time")
end

def plot_mean(names,values,y_title,title)
   Gnuplot.open() do |gp|
    Gnuplot::Plot.new( gp ) do |plot|
      plot.ylabel "response time [ms]"
      plot.xrange "[:]"
      plot.yrange "[0:]"
      #plot.size "1.0,1.0"
      plot.size "1,0.68"
      #plot.style "data lines"
      plot.set 'terminal postscript color eps enhanced font "Helvetica,13" size 8cm,8cm'
#      plot.set 'terminal postscript color eps enhanced font "Meiryo,18"'  #Ryumin-Light-EUC-H,7"'#size 16cm,8cm'
      #plot.set 'terminal pdf mono'
      plot.set 'boxwidth 0.5'
      plot.set "output 'output_#{title}.eps'"
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
    row["mean"].to_f * weight * 1000.0
  end.sum
  return mean_by_freq / weight_sum
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
  plot_mean(["Prop.","NoSE","Baseline"],[nose_index,nose,baseline],"latency","latency")
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

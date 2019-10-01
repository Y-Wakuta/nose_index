
class Content
  attr_accessor :children,:value
  def initialize(value)
    @value = value
  end
end

def split_by_comma_in_same_level(params)
  if params.count("<") == 1 then
    return [params]
  end

  bracket_nest = 0
  params_array = []
  tmp = []
  params.chars.each do |p|
    if p == "<" then
      bracket_nest += 1
    elsif p == ">" then
      bracket_nest -= 1
      throw Exception.new("bracket nest depth is invalid") if bracket_nest < 0
    elsif p == "," and bracket_nest == 0 then
      params_array << tmp
      tmp = []
    end
    tmp << p
  end
  params_array << tmp

  [params_array].flatten!
end

def parse(parent,params)
  current_param = params.match('([^<]+)')
  current_content = Content.new(current_param[0])

  if params.match('<(.*)>')[0] == params then
    return parent
  end

  childs_params = split_by_comma_in_same_level(params.match('<(.*)>')[0])
  parent.children = childs_params.to_a.map{|child| parse(current_content,child)}
  parent
end

root = Content.new("root")
File.open('./parameters.csv',"r") do |f|
  f.each_line.map{|l| l.split("\t")[1]}.each do |query|
    tree = parse(root,query)
    p tree
  end
end
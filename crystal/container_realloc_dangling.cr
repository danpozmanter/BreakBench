class Item
  property val : Int32
  def initialize(@val); end
end

v = [Item.new(1)]
r = v[0]
1000.times { |i| v << Item.new(i) }
w = [Item.new(7)]
r.val = 99
puts w[0].val

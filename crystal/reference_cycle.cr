class Node
  getter data = Bytes.new(4096, 1_u8)
  property other : Node?
end

ARGV[0].to_i.times do
  parent = Node.new
  child = Node.new
  parent.other = child
  child.other = parent
end
puts "done"

class Node
  getter value : Int64
  getter next_node : Node?

  def initialize(@value, @next_node)
  end
end

def build_and_release(n : Int64) : Int64
  head : Node? = nil
  n.times { |i| head = Node.new(i, head) }
  head.try(&.value) || 0_i64
end

build_and_release(ARGV[0].to_i64)
GC.collect
puts "done"

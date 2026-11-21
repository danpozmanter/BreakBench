class Node
  property next_node : Node? = nil
  getter payload = Bytes.new(2048)
end

class Obj
  getter payload = Bytes.new(2048)
  property callback : Proc(Int32)? = nil
end

total = 0_i64
ARGV[0].to_i.times do
  a = Node.new
  b = Node.new
  a.next_node = b
  b.next_node = a
  o = Obj.new
  o.callback = -> { o.payload.size }
  total += o.callback.not_nil!.call
end
puts(total < 0 ? "unreachable" : "done")

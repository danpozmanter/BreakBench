Node = Struct.new(:next_node, :payload)
Obj = Struct.new(:payload, :callback)
total = 0
ARGV[0].to_i.times do
  a = Node.new(nil, "\0".b * 2048)
  b = Node.new(a, "\0".b * 2048)
  a.next_node = b
  o = Obj.new("\0".b * 2048, nil)
  o.callback = -> { o.payload.bytesize }
  total += o.callback.call
end
puts(total.negative? ? "unreachable" : "done")

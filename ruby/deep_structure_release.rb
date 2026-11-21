Node = Struct.new(:value, :next)

def build_and_release(n)
  head = nil
  n.times { |i| head = Node.new(i, head) }
  head ? head.value : 0
end

build_and_release(ARGV[0].to_i)
GC.start
puts "done"

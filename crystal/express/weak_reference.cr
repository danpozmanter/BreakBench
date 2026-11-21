# LEVEL: STD

require "weak_ref"

class Node
end

def make
  WeakRef.new(Node.new)
end

w = make
100.times { Array(Int64).new(1000, 0_i64) }
GC.collect
GC.collect
puts(w.value.nil? ? "gone" : "alive")

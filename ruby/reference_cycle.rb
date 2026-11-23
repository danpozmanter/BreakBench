class Node
  attr_accessor :other

  def initialize
    @data = "\x01".b * 4096
    @other = nil
  end
end

ARGV[0].to_i.times do
  parent = Node.new
  child = Node.new
  parent.other = child
  child.other = parent
end
puts "done"

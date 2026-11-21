class Point
  getter x : Int32, y : Int32, label : String

  def initialize(@x, @y, @label)
  end

  def ==(other : Point)
    x == other.x && y == other.y
  end
end

puts Set{Point.new(1, 2, "a"), Point.new(1, 2, "b")}.size

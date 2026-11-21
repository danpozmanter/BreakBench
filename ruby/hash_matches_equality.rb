require "set"

class Point
  attr_reader :x, :y, :label

  def initialize(x, y, label)
    @x, @y, @label = x, y, label
  end

  def ==(other) = x == other.x && y == other.y
end

puts Set[Point.new(1, 2, "a"), Point.new(1, 2, "b")].size

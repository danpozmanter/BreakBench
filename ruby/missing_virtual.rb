class Shape
  def area = 0
  def describe = "area #{area}"
end

class Square < Shape
  def area = 4
end

puts Square.new.describe

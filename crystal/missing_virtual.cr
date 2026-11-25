class Shape
  def area
    0
  end

  def describe
    "area #{area}"
  end
end

class Square < Shape
  def area
    4
  end
end

puts Square.new.describe

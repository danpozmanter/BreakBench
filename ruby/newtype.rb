Meters = Struct.new(:v) do
  def +(other) = Meters.new(v + other.v)
end
Seconds = Struct.new(:v)

puts (Meters.new(2.0) + Seconds.new(3.0)).v

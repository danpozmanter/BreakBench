# LEVEL: LANGUAGE

record Meters, v : Float64 do
  def +(o : Meters)
    Meters.new(v + o.v)
  end
end
record Seconds, v : Float64

total = Meters.new(2.0) + Meters.new(3.0)
wrong = Meters.new(2.0) + Seconds.new(3.0) # REJECT!
puts total.v

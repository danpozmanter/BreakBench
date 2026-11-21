# LEVEL: LANGUAGE

class Rec
  getter id : Int32
  getter data : Bytes

  def initialize(@id)
    @data = Bytes.new(1016)
  end
end

last = Rec.new(0)
4_000_000.times { |i| last = Rec.new(i) }
puts last.id

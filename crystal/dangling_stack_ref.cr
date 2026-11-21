class IntBox
  property value : Int32
  def initialize(@value); end
end

def make : IntBox
  local = IntBox.new(4242)
  local
end

def clobber : Int32
  junk = StaticArray(Int32, 64).new(7)
  junk[63]
end

r = make
clobber
puts r.value

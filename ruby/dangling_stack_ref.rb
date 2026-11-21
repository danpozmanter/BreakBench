IntBox = Struct.new(:value)

def make
  local = IntBox.new(4242)
  local
end

def clobber
  Array.new(64, 7)
end

r = make
clobber
puts r.value

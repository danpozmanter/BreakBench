# LEVEL: LANGUAGE

def pair(a, b)
  "#{a} #{b}"
end

n = 0
nxt = -> { n += 1 }
puts pair(nxt.call, nxt.call)

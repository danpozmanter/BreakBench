# LEVEL: LANGUAGE

ch = Channel(Int32).new
spawn do
  (1..3).each { |v| ch.send(v) }
  ch.close
end
got = [] of Int32
while v = ch.receive?
  got << v
end
puts got.join(" ")

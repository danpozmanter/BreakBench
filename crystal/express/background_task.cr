# LEVEL: LANGUAGE

answer = Channel(Int32).new
spawn do
  sleep 50.milliseconds
  answer.send(7)
end
puts "started"
puts answer.receive

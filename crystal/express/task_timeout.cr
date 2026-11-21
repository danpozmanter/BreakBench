# LEVEL: LANGUAGE

done = Channel(Int32).new
spawn do
  sleep 5.seconds
  done.send(1)
end
select
when done.receive
  puts "done"
when timeout(100.milliseconds)
  puts "timed out"
end

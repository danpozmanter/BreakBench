# LEVEL: STD

done = Channel(Bool).new
spawn do
  begin
    raise "boom"
  rescue
    done.send(true)
  end
end
puts "worker crashed" if done.receive

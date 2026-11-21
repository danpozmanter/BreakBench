# LEVEL: LANGUAGE

def work
  raise "boom"
ensure
  puts "cleanup"
end

begin
  work
rescue
  puts "recovered"
end

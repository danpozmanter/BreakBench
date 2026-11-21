require "wait_group"

total = 0_i64
wg = WaitGroup.new
wg.spawn do
  ARGV.each { |item| total += item.to_i64 }
end
wg.wait
puts "total #{total}"

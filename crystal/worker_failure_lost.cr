require "wait_group"

total = 0_i64
# CONTROL! failed = false
wg = WaitGroup.new
wg.spawn do
  ARGV.each { |item| total += item.to_i64 } # CONTROL! begin; ARGV.each { |item| total += item.to_i64 }; rescue ArgumentError; failed = true; end
end
wg.wait
puts "total #{total}" # CONTROL! puts(failed ? "failed" : "total #{total}")

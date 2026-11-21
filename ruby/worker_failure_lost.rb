total = 0
worker = Thread.new do
  ARGV.each { |item| total += Integer(item) }
end
worker.join
puts "total #{total}"

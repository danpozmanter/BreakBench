total = 0
worker = Thread.new do
  ARGV.each { |item| total += Integer(item) }
end
worker.join # CONTROL! begin; worker.join; rescue ArgumentError; puts "failed"; exit; end
puts "total #{total}"

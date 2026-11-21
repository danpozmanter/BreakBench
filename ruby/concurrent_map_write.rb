table = {}
threads = Array.new(8) do |t|
  Thread.new do
    100_000.times { |k| table[t * 100_000 + k] = k }
  end
end
threads.each(&:join)
puts table.size

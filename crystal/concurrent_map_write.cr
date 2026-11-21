table = {} of Int64 => Int64
done = Channel(Nil).new
8.times do |t|
  spawn do
    100_000.times { |k| table[t.to_i64 * 100_000 + k] = k.to_i64 }
    done.send(nil)
  end
end
8.times { done.receive }
puts table.size

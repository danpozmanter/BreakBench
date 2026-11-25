class Counter
  getter count = 0

  def increment
    @count += 1
  end
end

def run_twice(f)
  f.call
  f.call
end

counter = Counter.new
run_twice(->counter.increment)
puts counter.count

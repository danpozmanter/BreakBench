class Counter
  attr_reader :count

  def initialize
    @count = 0
  end

  def increment
    @count += 1
  end
end

def run_twice(f)
  f.call
  f.call
end

counter = Counter.new
run_twice(counter.method(:increment))
puts counter.count

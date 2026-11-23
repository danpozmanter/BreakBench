class Barrier
  def initialize(parties)
    @parties = parties
    @waiting = 0
    @mutex = Mutex.new
    @condition = ConditionVariable.new
  end

  def wait
    @mutex.synchronize do
      @waiting += 1
      if @waiting == @parties
        @condition.broadcast
      else
        @condition.wait(@mutex) while @waiting < @parties
      end
    end
  end
end

a = Mutex.new
b = Mutex.new
ready = Barrier.new(2)

def transfer(first, second, ready)
  first.synchronize do
    ready.wait
    second.synchronize {}
  end
end

t1 = Thread.new { transfer(a, b, ready) }
t2 = Thread.new { transfer(b, a, ready) }
t1.join
t2.join
puts "finished"

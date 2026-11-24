class Ledger
  @lock = Mutex.new
  @debits = 0
  @credits = 0

  def post
    @lock.synchronize do
      @debits += 50
      raise "crash mid-update" if @debits > 0 # CONTROL! if @debits > 0; @debits -= 50; raise "crash mid-update"; end
      @credits += 50
    end
  end

  def balanced?
    @lock.synchronize { @debits == @credits }
  end
end

ledger = Ledger.new
done = Channel(Exception?).new
spawn do
  begin
    ledger.post
    done.send(nil)
  rescue ex
    done.send(ex)
  end
end
if failure = done.receive
  STDERR.puts "worker failed: #{failure.message}"
end
puts ledger.balanced? ? "balanced" : "unbalanced"

LOCK = Mutex.new
ledger = { debits: 0, credits: 0 }

worker = Thread.new do
  LOCK.synchronize do
    ledger[:debits] += 50
    raise "crash mid-update" if ledger[:debits] > 0 # CONTROL! (ledger[:debits] -= 50; raise "crash mid-update") if ledger[:debits] > 0
    ledger[:credits] += 50
  end
end
begin
  worker.join
rescue RuntimeError => e
  warn "worker failed: #{e.message}"
end
LOCK.synchronize { puts ledger[:debits] == ledger[:credits] ? "balanced" : "unbalanced" }

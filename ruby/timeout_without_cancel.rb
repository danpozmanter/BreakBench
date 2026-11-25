require "timeout"

$balance = 100
$gate = Queue.new

def charge
  $gate.pop
  $balance -= 30
end

begin
  Timeout.timeout(0.1) { charge }
rescue Timeout::Error
  $gate << :open
  charge
end
puts $balance

# LEVEL: LANGUAGE

t = Thread.new { raise ArgumentError, "bad input" }
t.report_on_exception = false
begin
  t.join
rescue ArgumentError => e
  puts "worker failed: #{e.message}"
end

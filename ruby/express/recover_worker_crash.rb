# LEVEL: LANGUAGE

t = Thread.new { raise "boom" }
t.report_on_exception = false
begin
  t.join
rescue
  puts "worker crashed"
end

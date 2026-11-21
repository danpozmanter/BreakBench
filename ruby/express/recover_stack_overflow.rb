# LEVEL: LANGUAGE

def walk(n) = walk(n + 1) + 1

begin
  walk(0)
rescue SystemStackError
  puts "stack overflow"
end

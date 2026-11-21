# LEVEL: LANGUAGE

class KindA < StandardError; end
class KindB < StandardError; end

def step(a)
  raise(a ? KindA : KindB)
rescue KindA
  puts "caught A"
end

step(true)
begin
  step(false)
rescue KindB
  puts "passed B"
end

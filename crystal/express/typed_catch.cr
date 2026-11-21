# LEVEL: LANGUAGE

class KindA < Exception; end
class KindB < Exception; end

def step(a)
  raise(a ? KindA.new : KindB.new)
rescue KindA
  puts "caught A"
end

step(true)
begin
  step(false)
rescue KindB
  puts "passed B"
end

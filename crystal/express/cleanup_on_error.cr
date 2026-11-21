# LEVEL: LANGUAGE

def use(fail)
  raise "bad" if fail
ensure
  puts "released"
end

use(false)
begin
  use(true)
rescue
end

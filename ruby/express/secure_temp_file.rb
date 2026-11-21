# LEVEL: STD

require "tempfile"

Tempfile.create("bb") do |f|
  f.write("ok")
  f.rewind
  puts f.read
end

# LEVEL: STD

file = File.tempfile("bb")
file.print("ok")
file.close
puts File.read(file.path)
file.delete

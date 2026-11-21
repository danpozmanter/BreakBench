# LEVEL: STD

(path, io) = mktemp()
write(io, "ok")
seekstart(io)
println(read(io, String))
close(io)
rm(path)

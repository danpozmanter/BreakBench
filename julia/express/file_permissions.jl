# LEVEL: STD

path = "/tmp/bb_perm.txt"
rm(path; force=true)
touch(path)
chmod(path, 0o600)
println(string(filemode(path) & 0o777; base=8))
rm(path)

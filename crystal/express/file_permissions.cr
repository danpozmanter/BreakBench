# LEVEL: STD

path = "/tmp/bb_perm.txt"
File.delete?(path)
File.open(path, "w", perm: 0o600) { }
puts (File.info(path).permissions.value & 0o777).to_s(8)
File.delete(path)

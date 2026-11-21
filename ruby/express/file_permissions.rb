# LEVEL: STD

path = "/tmp/bb_perm.txt"
File.delete(path) if File.exist?(path)
File.open(path, File::CREAT | File::EXCL | File::WRONLY, 0o600) {}
puts (File.stat(path).mode & 0o777).to_s(8)
File.delete(path)

LOCK = "/tmp/bb_scratch/reader.lock"

def rows
  File.write(LOCK, "")
  begin
    %w[alpha beta gamma].each { |line| yield line }
  ensure
    File.delete(LOCK)
  end
end

rows do |line|
  puts line
  break
end

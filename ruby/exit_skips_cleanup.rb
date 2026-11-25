LOCK = "/tmp/bb_scratch/run.lock"

def check_args
  if ARGV.include?("--version")
    puts "1.0"
    exit 0
  end
  false
end

def main
  File.write(LOCK, "")
  begin
    return if check_args
    puts "working"
  ensure
    File.delete(LOCK)
  end
end

main

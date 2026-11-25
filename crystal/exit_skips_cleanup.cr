LOCK = "/tmp/bb_scratch/run.lock"

def check_args : Bool
  if ARGV.includes?("--version")
    puts "1.0"
    exit 0 # BREAK!
    # CONTROL! return true
  end
  false
end

def main
  File.touch(LOCK)
  begin
    return if check_args
    puts "working"
  ensure
    File.delete(LOCK)
  end
end

main

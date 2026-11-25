require "tempfile"

def export(rows)
  scratch = Tempfile.new(["export", ".csv"], "/tmp/bb_scratch")
  scratch.puts "qty"
  rows.each do |row|
    qty = Integer(row)
    scratch.puts qty
  end
  scratch.close
  scratch.unlink
end

begin
  export(["3", "x", "5"])
rescue ArgumentError
  puts "export failed"
end

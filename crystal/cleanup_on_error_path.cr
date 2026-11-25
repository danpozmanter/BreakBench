SCRATCH = "/tmp/bb_scratch/export.csv"

def export(rows : Array(String))
  file = File.open(SCRATCH, "w")
  file.puts "qty"
  rows.each do |row|
    qty = row.to_i # BREAK!
    # CONTROL! qty = row.to_i? || (file.close; File.delete(SCRATCH); raise ArgumentError.new("invalid row #{row}"))
    file.puts qty
  end
  file.close
  File.delete(SCRATCH)
end

begin
  export(["3", "x", "5"])
rescue ArgumentError
  puts "export failed"
end

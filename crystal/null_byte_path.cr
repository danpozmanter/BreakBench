Dir.mkdir_p("/tmp/bb_files")
File.write("/tmp/bb_files/report.txt", "secret\n")

name = "report.txt\0.png"
if !name.ends_with?(".png")
  puts "rejected"
else
  begin
    print File.read("/tmp/bb_files/" + name)
  rescue
    puts "rejected"
  end
end

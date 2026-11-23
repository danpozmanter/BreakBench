mkpath("/tmp/bb_files")
write("/tmp/bb_files/report.txt", "secret\n")

name = "report.txt\0.png"
if !endswith(name, ".png")
    println("rejected")
else
    try
        print(read("/tmp/bb_files/" * name, String))
    catch
        println("rejected")
    end
end

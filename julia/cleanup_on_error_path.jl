function export_rows(rows)
    path, io = mktemp("/tmp/bb_scratch")
    println(io, "qty")
    for row in rows
        qty = parse(Int, row)
        println(io, qty)
    end
    close(io)
    rm(path)
end

try
    export_rows(["3", "x", "5"])
catch e
    e isa ArgumentError || rethrow()
    println("export failed")
end

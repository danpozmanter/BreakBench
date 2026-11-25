const LOCK = "/tmp/bb_scratch/reader.lock"

function rows()
    Channel{String}() do ch
        touch(LOCK)
        try
            for line in ("alpha", "beta", "gamma")
                put!(ch, line)
            end
        finally
            rm(LOCK)
        end
    end
end

for line in rows()
    println(line)
    break # BREAK!
end

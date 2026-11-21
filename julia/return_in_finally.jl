write_report() = error("disk full")

close_log() = nothing

function save_report()
    try
        write_report()
    finally
        close_log()
        return # BREAK!
    end
end

try
    save_report()
    println("saved")
catch
    println("failed")
end

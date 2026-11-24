struct Report end

write_report(::Report, text) = error("disk full")
close_report(::Report) = error("close failed")

function save()
    report = Report()
    try
        write_report(report, "totals")
    finally # CONTROL! catch e
        close_report(report) # CONTROL! try close_report(report) catch end; rethrow()
    end
    # CONTROL! close_report(report)
end

try
    save()
catch err
    println(err.msg)
end

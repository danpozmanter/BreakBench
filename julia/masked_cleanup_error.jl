struct Report end

write_report(::Report, text) = error("disk full")
close_report(::Report) = error("close failed")

function save()
    report = Report()
    try
        write_report(report, "totals")
    finally
        close_report(report)
    end
end

try
    save()
catch err
    println(err.msg)
end

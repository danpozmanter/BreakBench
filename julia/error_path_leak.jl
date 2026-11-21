function process(request, id)
    buf = zeros(UInt8, 4096)
    text = codeunits("$request#$id")
    buf[1:length(text)] .= text
    buf[1] != UInt8('{') && throw(ArgumentError("invalid request"))
    nothing
end

function main()
    n = parse(Int, ARGS[1])
    failures = 0
    for i in 1:n
        try
            process("not json", i)
        catch e
            e isa ArgumentError || rethrow()
            failures += 1
        end
    end
    println(failures == n ? "done" : "unexpected")
end

main()

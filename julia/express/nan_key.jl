# LEVEL: STD

function main()
    a = parse(Float64, "NaN")
    b = parse(Float64, "NaN")
    s = Set([a])
    println(b in s ? "found" : "missing")
end

main()

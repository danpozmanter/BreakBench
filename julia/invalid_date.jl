using Dates

function main()
    y, m, d = parse.(Int, ARGS[1:3])
    println(Date(y, m, d)) # CONTROL! println(Dates.validargs(Date, y, m, d) === nothing ? Date(y, m, d) : "invalid")
end

main()

@enum Color red green blue

name(c::Color) = c == red ? "red" : c == green ? "green" : "blue"

function main()
    println(name(7)) # CONTROL! println(name(green))
end

main()

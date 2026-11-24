struct Meters
    v::Float64
end

struct Seconds
    v::Float64
end

Base.:+(a::Meters, b::Meters) = Meters(a.v + b.v)

function main()
    println((Meters(2.0) + Seconds(3.0)).v) # CONTROL! println(Meters(2.0).v)
end

main()

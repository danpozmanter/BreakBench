@enum Color Red Green Blue

function name(c::Color)
    if c == Red
        "red"
    elseif c == Green
        "green"
    end # CONTROL! else; "blue"; end
end

println(name(Color(parse(Int, ARGS[1]))))

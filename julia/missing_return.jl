function grade(score)
    if score > 50
        return "pass"
    elseif score < 50
        return "fail"
    end # CONTROL! else; return "borderline"; end
end

println(grade(parse(Int, ARGS[1])))

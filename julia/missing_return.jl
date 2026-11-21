function grade(score)
    if score > 50
        return "pass"
    elseif score < 50
        return "fail"
    end
end

println(grade(parse(Int, ARGS[1])))

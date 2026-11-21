function apply_update!(weights)
    weights[2] = 5
    weights[4] = 0
end

function main()
    weights = [3, 3, 3, 3]
    before = weights
    apply_update!(weights)
    println(count(before .!= weights))
end

main()

function main()
    jobs = [1, 2, 3]
    # UNDEFINED: @assert might be disabled at some optimization levels, and its docs say code must not rely on the condition running
    @assert pop!(jobs) == 3 # CONTROL! last = pop!(jobs); @assert last == 3
    println(length(jobs))
end

main()

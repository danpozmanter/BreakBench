function main()
    answer = Channel{Int}()
    Threads.@spawn put!(answer, parse(Int, "x")) # CONTROL! Threads.@spawn (n = tryparse(Int, "x"); n === nothing ? close(answer) : put!(answer, n))
    println(take!(answer)) # CONTROL! println(try take!(answer) catch; "failed" end)
end

main()

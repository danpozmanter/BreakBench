# LEVEL: LANGUAGE

function main()
    ch = Channel{Int}() do c
        for v in 1:3
            put!(c, v)
        end
    end
    println(join(collect(ch), " "))
end
main()

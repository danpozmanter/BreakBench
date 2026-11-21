function make()
    local_ref = Ref(4242)
    return local_ref
end

clobber() = fill(7, 64)[end]

function main()
    r = make()
    clobber()
    println(r[])
end

main()

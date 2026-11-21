function main()
    f = open("/tmp/bb_close.txt", "w")
    write(f, "a")
    close(f)
    write(f, "b")
    println("ok")
end
main()

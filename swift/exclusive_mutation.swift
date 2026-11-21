func transfer(_ from: inout Int, _ to: inout Int, _ amount: Int) {
    from -= amount
    to += amount
}

func run() {
    var a = 100
    var b = 0
    transfer(&a, &b, 30)
    transfer(&a, &a, 10) // BREAK!
    print(a, b)
}

run()

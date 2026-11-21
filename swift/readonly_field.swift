struct Config {
    let port: Int
}

var c = Config(port: 8080)
c.port = 1 // BREAK!
print(c.port)

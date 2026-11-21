// LEVEL: LANGUAGE

struct Config {
    let timeout: Int
    let retries: Int
}

let c = Config(timeout: 5, retries: 3)
let partial = Config(timeout: 5) // REJECT!
print(c.timeout, c.retries)

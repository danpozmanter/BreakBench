type Config = object
  timeout {.requiresInit.}: int
  retries {.requiresInit.}: int

let c = Config(timeout: 5, retries: 3)
let partial = Config(timeout: 5) # BREAK!
echo c.timeout, " ", c.retries

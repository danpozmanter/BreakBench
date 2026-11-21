# LEVEL: LANGUAGE

type Config = object
  port: int

let c = Config(port: 8080)
c.port = 1 # REJECT!
echo c.port

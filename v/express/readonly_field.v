// LEVEL: LANGUAGE

struct Config {
	port int
}

fn main() {
	c := Config{
		port: 8080
	}
	c.port = 1 // REJECT!
	println(c.port)
}

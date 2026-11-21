struct Config {
	port int
}

fn main() {
	c := Config{
		port: 8080
	}
	c.port = 1 // BREAK!
	println(c.port)
}

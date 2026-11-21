// LEVEL: LANGUAGE

struct Config {
	name string
}

fn main() {
	mut c := &Config{
		name: 'app'
	}
	c = nil // REJECT!
	println(c.name)
}

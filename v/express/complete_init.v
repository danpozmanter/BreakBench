// LEVEL: LANGUAGE

struct Config {
	timeout int @[required]
	retries int @[required]
}

fn main() {
	c := Config{
		timeout: 5
		retries: 3
	}
	partial := Config{ // REJECT!
		timeout: 5 // REJECT!
	} // REJECT!
	println(partial) // REJECT!
	println('${c.timeout} ${c.retries}')
}

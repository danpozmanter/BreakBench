struct Config {
	timeout int @[required]
	retries int @[required]
}

fn main() {
	c := Config{
		timeout: 5
		retries: 3
	}
	partial := Config{ // BREAK!
		timeout: 5 // BREAK!
	} // BREAK!
	println(partial) // BREAK!
	println('${c.timeout} ${c.retries}')
}

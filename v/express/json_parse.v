// LEVEL: STD

import json

struct Config {
	port  int
	debug bool
}

fn main() {
	good := json.decode(Config, '{"port": 8080, "debug": true}')!
	result := if _ := json.decode(Config, '{port: 8080}') { 'valid' } else { 'invalid' }
	println('${good.port} ${result}')
}

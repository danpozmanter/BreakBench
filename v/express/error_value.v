// LEVEL: LANGUAGE

import strconv

fn parse_port(s string) !int {
	return strconv.atoi(s)!
}

fn main() {
	p := parse_port('x') or {
		println('error')
		return
	}
	println(p)
}

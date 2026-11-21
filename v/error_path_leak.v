import os

fn process(request string, id int) ! {
	mut buf := []u8{len: 4096}
	text := '${request}#${id}'.bytes()
	for i, c in text {
		buf[i] = c
	}
	if buf[0] != `{` {
		return error('invalid request')
	}
}

fn main() {
	n := os.args[1].int()
	mut failures := 0
	for i in 0 .. n {
		process('not json', i) or { failures++ }
	}
	println(if failures == n { 'done' } else { 'unexpected' })
}

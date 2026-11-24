import os

struct Frame {
	buf    [4]int
	secret int
}

fn main() {
	f := Frame{
		buf:    [1, 2, 3, 4]!
		secret: 42
	}
	idx := os.args[1].int()
	println(f.buf[idx]) // CONTROL! if idx >= 0 && idx < f.buf.len { println(f.buf[idx]) } else { println('out of range') }
}

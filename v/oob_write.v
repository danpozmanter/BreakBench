import os

struct Frame {
mut:
	buf   [4]int
	guard int = 7
}

fn main() {
	mut f := Frame{}
	idx := os.args[1].int()
	f.buf[idx] = 99 // CONTROL! if idx >= 0 && idx < f.buf.len { f.buf[idx] = 99 }
	println(f.guard)
}

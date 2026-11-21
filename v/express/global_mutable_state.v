// LEVEL: LANGUAGE

struct Counter {
mut:
	n int
}

fn (mut c Counter) hit() {
	c.n++
}

__global plain = 0 // REJECT!

fn main() {
	mut c := Counter{}
	c.hit()
	c.hit()
	println(c.n)
}

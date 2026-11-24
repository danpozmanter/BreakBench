struct Counter {
mut:
	n int
}

fn add(shared c Counter) {
	for _ in 0 .. 1_000_000 {
		c.n++ // BREAK!
	}
}

fn main() {
	shared c := Counter{}
	mut threads := []thread{}
	for _ in 0 .. 8 {
		threads << spawn add(shared c)
	}
	threads.wait()
	rlock c {
		println(c.n)
	}
}

// LEVEL: STD

import sync.stdatomic

fn work(counter &u64) {
	for _ in 0 .. 100000 {
		stdatomic.add_u64(counter, 1)
	}
}

fn main() {
	counter := u64(0)
	a := spawn work(&counter)
	b := spawn work(&counter)
	a.wait()
	b.wait()
	println(stdatomic.load_u64(&counter))
}

// LEVEL: STD

import sync

struct Counter {
mut:
	lock  sync.Mutex
	value int
}

fn work(mut c Counter) {
	for _ in 0 .. 100000 {
		c.lock.@lock()
		c.value++
		c.lock.unlock()
	}
}

fn main() {
	mut c := &Counter{}
	c.lock.init()
	a := spawn work(mut c)
	b := spawn work(mut c)
	a.wait()
	b.wait()
	println(c.value)
}

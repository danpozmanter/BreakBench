@[heap]
struct Counter {
mut:
	count int
}

fn (mut c Counter) increment() {
	c.count++
}

fn run_twice(f fn ()) {
	f()
	f()
}

fn main() {
	mut counter := &Counter{}
	run_twice(counter.increment) // CONTROL! run_twice(fn [mut counter] () { counter.increment() })
	println(counter.count)
}

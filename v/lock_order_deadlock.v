import sync

struct Gate {
mut:
	mu sync.Mutex
	arrivals int
}

fn rendezvous(mut gate Gate) {
	gate.mu.lock()
	gate.arrivals++
	gate.mu.unlock()
	for {
		gate.mu.lock()
		open := gate.arrivals == 2
		gate.mu.unlock()
		if open { break }
	}
}

fn transfer(mut first sync.Mutex, mut second sync.Mutex, mut gate Gate) {
	first.lock()
	rendezvous(mut gate)
	second.lock()
	second.unlock()
	first.unlock()
}

fn main() {
	mut a := sync.new_mutex()
	mut b := sync.new_mutex()
	mut gate := &Gate{}
	t1 := spawn transfer(mut a, mut b, mut gate)
	t2 := spawn transfer(mut b, mut a, mut gate)
	t1.wait()
	t2.wait()
	println('finished')
}

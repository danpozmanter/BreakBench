import sync

struct Ledger {
mut:
	mu      sync.Mutex
	debits  int
	credits int
}

fn (mut l Ledger) post() {
	l.mu.lock()
	defer {
		l.mu.unlock()
	}
	l.debits += 50
	if l.debits > 0 {
		panic('crash mid-update') // CONTROL! l.debits -= 50
		// CONTROL! return
	}
	l.credits += 50
}

fn main() {
	mut l := &Ledger{}
	worker := spawn fn [mut l] () {
		l.post()
	}()
	worker.wait()
	l.mu.lock()
	println(if l.debits == l.credits { 'balanced' } else { 'unbalanced' })
	l.mu.unlock()
}

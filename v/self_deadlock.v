import sync

struct Bank {
mut:
	mu      sync.Mutex
	balance int
}

fn (mut b Bank) deposit(amount int) {
	b.mu.lock()
	defer {
		b.mu.unlock()
	}
	b.balance += amount
}

fn main() {
	mut b := Bank{}
	b.mu.lock() // BREAK!
	b.deposit(10)
	b.mu.unlock() // BREAK!
	println('done')
}

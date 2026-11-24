import sync

struct Account {
mut:
	mu      sync.Mutex
	balance int = 100
}

fn (mut a Account) withdraw(amount int) {
	a.mu.lock()
	if amount > a.balance {
		return // CONTROL! a.mu.unlock()
		// CONTROL! return
	}
	a.balance -= amount
	a.mu.unlock()
}

fn main() {
	mut account := &Account{}
	account.withdraw(500)
	worker := spawn account.withdraw(30)
	worker.wait()
	println(account.balance)
}

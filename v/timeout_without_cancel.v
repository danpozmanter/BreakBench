import sync
import time

struct Account {
mut:
	mu      sync.Mutex
	balance int = 100
}

fn (mut a Account) charge(gate chan bool) {
	_ := <-gate or { false }
	a.mu.lock()
	a.balance -= 30
	a.mu.unlock()
}

fn attempt(mut account Account, gate chan bool, done chan bool) {
	account.charge(gate)
	done <- true
}

fn main() {
	mut account := &Account{}
	gate := chan bool{}
	done := chan bool{cap: 1}
	task := spawn attempt(mut account, gate, done)
	select {
		_ := <-done {}
		100 * time.millisecond {
			gate.close()
			account.charge(gate) // BREAK!
		}
	}
	task.wait()
	println(account.balance)
}

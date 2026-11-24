package main

import "core:fmt"
import "core:sync"
import "core:thread"

Account :: struct {
	lock:    sync.Mutex,
	balance: int,
}

withdraw :: proc(account: ^Account, amount: int) {
	sync.mutex_lock(&account.lock)
	if amount > account.balance {
		return // CONTROL! sync.mutex_unlock(&account.lock); return
	}
	account.balance -= amount
	sync.mutex_unlock(&account.lock)
}

worker :: proc(account: ^Account) {
	withdraw(account, 30)
}

main :: proc() {
	account := Account{balance = 100}
	withdraw(&account, 500)
	t := thread.create_and_start_with_poly_data(&account, worker)
	thread.join(t)
	fmt.println(account.balance)
}

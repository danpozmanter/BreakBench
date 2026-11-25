package main

import "core:fmt"
import "core:sync"
import "core:thread"
import "core:time"

Account :: struct {
	lock:    sync.Mutex,
	gate:    sync.Sema,
	done:    sync.Sema,
	balance: int,
}

charge :: proc(account: ^Account) {
	sync.sema_wait(&account.gate)
	sync.sema_post(&account.gate)
	sync.mutex_lock(&account.lock)
	account.balance -= 30
	sync.mutex_unlock(&account.lock)
}

attempt :: proc(account: ^Account) {
	charge(account)
	sync.sema_post(&account.done)
}

main :: proc() {
	account := Account{balance = 100}
	t := thread.create_and_start_with_poly_data(&account, attempt)
	if !sync.sema_wait_with_timeout(&account.done, 100 * time.Millisecond) {
		sync.sema_post(&account.gate)
		charge(&account) // BREAK!
	}
	thread.join(t)
	fmt.println(account.balance)
}

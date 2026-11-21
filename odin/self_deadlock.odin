package main

import "core:fmt"
import "core:sync"

lock: sync.Mutex
balance: int

deposit :: proc(amount: int) {
	sync.mutex_lock(&lock)
	defer sync.mutex_unlock(&lock)
	balance += amount
}

main :: proc() {
	sync.mutex_lock(&lock)
	deposit(10)
	sync.mutex_unlock(&lock)
	fmt.println("done")
}

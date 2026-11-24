package main

import "core:fmt"
import "core:sync"
import "core:thread"

lock: sync.Mutex
debits, credits: int

post :: proc() {
	sync.mutex_lock(&lock)
	defer sync.mutex_unlock(&lock)
	debits += 50
	if debits > 0 {
		fmt.eprintln("crash mid-update") // CONTROL! debits -= 50
		return
	}
	credits += 50
}

main :: proc() {
	worker := thread.create_and_start(post)
	thread.join(worker)
	thread.destroy(worker)
	sync.mutex_lock(&lock)
	defer sync.mutex_unlock(&lock)
	fmt.println(debits == credits ? "balanced" : "unbalanced")
}

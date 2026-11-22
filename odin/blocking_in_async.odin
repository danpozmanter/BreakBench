package main

import "core:fmt"
import "core:thread"
import "core:time"

job :: proc() {
	time.sleep(500 * time.Millisecond)
}

main :: proc() {
	start := time.tick_now()
	a := thread.create_and_start(job)
	b := thread.create_and_start(job)
	thread.join(a)
	thread.join(b)
	fmt.println("concurrent" if time.tick_since(start) < 800 * time.Millisecond else "serial")
}

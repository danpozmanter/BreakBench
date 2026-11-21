// LEVEL: STD

package main

import "core:fmt"
import "core:sync"
import "core:thread"
import "core:time"

cancelled: bool

main :: proc() {
	t := thread.create_and_start(proc() {
		for !sync.atomic_load(&cancelled) {
			time.sleep(time.Millisecond)
		}
	})
	time.sleep(20 * time.Millisecond)
	sync.atomic_store(&cancelled, true)
	thread.join(t)
	fmt.println("stopped")
}

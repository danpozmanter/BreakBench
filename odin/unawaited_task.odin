package main

import "core:fmt"
import "core:sync"
import "core:thread"
import "core:time"

saved: i64

save :: proc() {
	time.sleep(50 * time.Millisecond)
	sync.atomic_add(&saved, 1)
}

main :: proc() {
	task := thread.create_and_start(save) // CONTROL! task := thread.create_and_start(save); thread.join(task)
	fmt.println(sync.atomic_load(&saved))
}

// LEVEL: STD

package main

import "core:fmt"
import "core:os"
import "core:sync"
import "core:thread"
import "core:time"

done: sync.Sema

main :: proc() {
	thread.create_and_start(proc() {
		time.sleep(5 * time.Second)
		sync.sema_post(&done)
	})
	ok := sync.sema_wait_with_timeout(&done, 100 * time.Millisecond)
	fmt.println("done" if ok else "timed out")
	os.exit(0)
}

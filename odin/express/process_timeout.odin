// LEVEL: STD

package main

import "core:fmt"
import "core:os"
import "core:time"

main :: proc() {
	p, err := os.process_start({command = {"sleep", "10"}})
	if err != nil do panic("start")
	state, _ := os.process_wait(p, 100 * time.Millisecond)
	if !state.exited {
		_ = os.process_kill(p)
		_, _ = os.process_wait(p)
	}
	fmt.println("killed" if !state.exited else "finished")
}

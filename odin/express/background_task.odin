// LEVEL: STD

package main

import "core:fmt"
import "core:thread"
import "core:time"

answer: int

slow :: proc() {
	time.sleep(50 * time.Millisecond)
	answer = 7
}

main :: proc() {
	t := thread.create_and_start(slow)
	fmt.println("started")
	thread.join(t)
	fmt.println(answer)
}

package main

import "core:fmt"
import "core:os"
import "core:slice"

LOCK :: "/tmp/bb_scratch/run.lock"

check_args :: proc() -> bool {
	if slice.contains(os.args[1:], "--version") {
		fmt.println("1.0")
		os.exit(0) // BREAK!
		// CONTROL! return true
	}
	return false
}

main :: proc() {
	_ = os.write_entire_file(LOCK, nil)
	defer os.remove(LOCK)
	if check_args() {
		return
	}
	fmt.println("working")
}

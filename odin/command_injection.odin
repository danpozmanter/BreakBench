package main

import "core:fmt"
import "core:os"

main :: proc() {
	_ = os.remove("/tmp/bb_pwned")
	_, _, _, _ = os.process_exec({command = {"echo", os.args[1]}}, context.allocator)
	fmt.println("injected" if os.exists("/tmp/bb_pwned") else "safe")
}

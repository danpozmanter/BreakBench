package main

import "core:fmt"
import "core:os"

main :: proc() {
	_, output, _, err := os.process_exec({command = {"sh", "-c", "printf HELLO-WO; sleep 0.2; printf RLD-1234"}}, context.allocator)
	if err != nil {
		os.exit(1)
	}
	fmt.println(string(output))
}

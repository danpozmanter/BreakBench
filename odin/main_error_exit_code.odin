package main

import "core:fmt"
import "core:os"

main :: proc() {
	text, err := os.read_entire_file("/nonexistent/bb.conf", context.allocator)
	if err != nil {
		fmt.eprintln("config missing")
		return // BREAK!
		// CONTROL! os.exit(1)
	}
	fmt.println(len(text))
}

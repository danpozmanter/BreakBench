package main

import "core:fmt"
import "core:os"

main :: proc() {
	os.process_exec({command = {"sh", "-c", "exit 3"}}, context.allocator) // CONTROL! _, _, _, _ = os.process_exec({command = {"sh", "-c", "exit 3"}}, context.allocator)
	fmt.println("backed up")
}

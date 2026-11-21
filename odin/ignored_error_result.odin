package main

import "core:fmt"
import "core:os"

save :: proc(path: string) -> os.Error {
	return os.write_entire_file(path, transmute([]u8)string("data"))
}

main :: proc() {
	save("/nonexistent/dir/out.txt") // BREAK!
	// CONTROL! _ = save("/nonexistent/dir/out.txt")
	fmt.println("saved")
}

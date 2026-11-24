package main

import "core:fmt"
import "core:os"

save :: proc(path: string) -> os.Error {
	return os.write_entire_file(path, transmute([]u8)string("data"))
}

main :: proc() {
	save("/dev/null/out.txt") // CONTROL! if save("/dev/null/out.txt") != nil { fmt.println("failed") } else { fmt.println("saved") }
	// CONTROL! _ = save("/dev/null/out.txt") // BREAK!
	fmt.println("saved") // BREAK!
}

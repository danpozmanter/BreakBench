package main

import "core:fmt"
import "core:os"
import "core:strconv"

Frame :: struct {
	buf:   [4]int,
	guard: int,
}

main :: proc() {
	f := Frame{guard = 7}
	idx, _ := strconv.parse_int(os.args[1])
	f.buf[idx] = 99
	fmt.println(f.guard)
}

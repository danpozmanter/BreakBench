package main

import "core:fmt"
import "core:os"
import "core:strconv"

Frame :: struct {
	buf:    [4]int,
	secret: int,
}

main :: proc() {
	f := Frame{buf = {1, 2, 3, 4}, secret = 42}
	idx, _ := strconv.parse_int(os.args[1])
	fmt.println(f.buf[idx])
}

package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	v, _ := strconv.parse_int(os.args[1])
	// CONTROL! if v < 0 || v > 255 { fmt.println("out of range"); return }
	b := u8(v)
	fmt.println(b)
}

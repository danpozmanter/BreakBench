package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	x, _ := strconv.parse_int(os.args[1])
	inside := 1 < x < 3 // BREAK!
	// CONTROL! inside := 1 < x && x < 3
	fmt.println("inside" if inside else "outside")
}

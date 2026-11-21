package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	x, _ := strconv.parse_int(os.args[1])
	even := x & 1 == 0 // BREAK!
	// CONTROL! even := (x & 1) == 0
	fmt.println("even" if even else "odd")
}

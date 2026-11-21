package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	x, _ := strconv.parse_f64(os.args[1])
	y, _ := strconv.parse_f64(os.args[2])
	a := x + y
	fmt.println("equal" if a == 0.3 else "not equal")
}

package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	fmt.printf(os.args[1])
	fmt.println()
	_ = strconv.parse_int
}

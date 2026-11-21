package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	x, _ := strconv.parse_int(os.args[1])
	label := "not one"
	if x = 1 do label = "one" // BREAK!
	// CONTROL! if x == 1 do label = "one"
	fmt.println(label)
}

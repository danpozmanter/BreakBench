package main

import "core:fmt"
import "core:os"
import "core:strconv"

size :: proc(n: int) -> string {
	label := "small"
	if n > 5; { // CONTROL! if n > 5 {
		label = "big"
	}
	return label
}

main :: proc() {
	a, _ := strconv.parse_int(os.args[1])
	b, _ := strconv.parse_int(os.args[2])
	fmt.println(size(a))
	fmt.println(size(b))
}

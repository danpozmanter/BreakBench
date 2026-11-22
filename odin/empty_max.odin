package main

import "core:fmt"
import "core:os"
import "core:slice"
import "core:strconv"

main :: proc() {
	xs: [dynamic]i64
	for a in os.args[1:] {
		n, _ := strconv.parse_i64(a)
		append(&xs, n)
	}
	m := slice.max(xs[:])
	fmt.println(m + 1)
}

package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	a, _ := strconv.parse_i64(os.args[1])
	b, _ := strconv.parse_i64(os.args[2])
	fmt.println(a / b) // CONTROL! fmt.println((0 - u64(a)) / (0 - u64(b)))
}

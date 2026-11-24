package main

import "core:fmt"
import "core:os"
import "core:strconv"

is_odd :: proc(n: i64) -> bool {
	return n % 2 == 1 // CONTROL! return n % 2 != 0
}

main :: proc() {
	n, _ := strconv.parse_i64(os.args[1])
	fmt.println("odd" if is_odd(n) else "even")
}

package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	n, _ := strconv.parse_i64(os.args[1])
	fmt.println(n + 1) // CONTROL! fmt.println(u64(n) + 1)
}

package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	n, _ := strconv.parse_i64(os.args[1]) // CONTROL! n, ok := strconv.parse_i64(os.args[1])
	fmt.println(n) // CONTROL! if ok { fmt.println(n) } else { fmt.println("invalid") }
}

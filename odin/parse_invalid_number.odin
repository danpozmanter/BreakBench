package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	n, _ := strconv.parse_int(os.args[1]) // CONTROL! n, ok := strconv.parse_int(os.args[1])
	fmt.println(n + 1) // CONTROL! if ok { fmt.println(n + 1) } else { fmt.println("invalid") }
}

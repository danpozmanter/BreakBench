package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	n, _ := strconv.parse_int(os.args[1])
	// CONTROL! if n > 1 << 30 { fmt.println("too large"); return }
	buf := make([]u8, n)
	buf[n - 1] = 1
	fmt.println(len(buf))
}

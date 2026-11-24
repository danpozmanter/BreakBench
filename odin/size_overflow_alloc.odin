package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	count, _ := strconv.parse_int(os.args[1])
	// CONTROL! if count > 1 << 27 { fmt.println("too large"); return }
	size := count * 8
	records := make([]u8, size)
	defer delete(records)
	records[8] = 99
	fmt.println("stored")
}

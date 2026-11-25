package main

import "core:fmt"
import "core:mem"
import "core:os"
import "core:strconv"

Rec :: struct {
	data: [4096]u8,
}

last: ^Rec

main :: proc() {
	n, _ := strconv.parse_int(os.args[1])
	for _ in 0 ..< n {
		rec := new(Rec)
		mem.set(&rec.data, 1, len(rec.data))
		last = rec
		// CONTROL! free(rec)
	}
	fmt.println("done")
}

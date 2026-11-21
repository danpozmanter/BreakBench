// LEVEL: LANGUAGE

package main

import "core:fmt"

main :: proc() {
	buf: [dynamic]u8
	for i in 0 ..< 100_000 {
		append(&buf, u8(i))
	}
	fmt.println(len(buf))
}

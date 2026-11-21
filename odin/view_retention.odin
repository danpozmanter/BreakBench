package main

import "core:fmt"
import "core:os"
import "core:slice"
import "core:strconv"
import "core:strings"

main :: proc() {
	n, _ := strconv.parse_int(os.args[1])
	heads: [dynamic][]u8
	prefixes: [dynamic]string
	for i in 0 ..< n {
		buf := make([]u8, 32768)
		slice.fill(buf, u8(i))
		append(&heads, slice.clone(buf[:16]))
		delete(buf)
		big := strings.repeat(string([]u8{u8('a' + i % 26)}), 32768)
		append(&prefixes, strings.clone(big[:16]))
		delete(big)
	}
	fmt.println(len(heads))
}

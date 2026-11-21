package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	s, _ := strconv.parse_uint(os.args[1])
	one: u64 = 1
	fmt.println(one << s)
}

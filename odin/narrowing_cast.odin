package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	v, _ := strconv.parse_int(os.args[1])
	b := u8(v)
	fmt.println(b)
}

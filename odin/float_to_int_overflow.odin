package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	x, _ := strconv.parse_f64(os.args[1])
	v := i64(x)
	fmt.println(v)
}

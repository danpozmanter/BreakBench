package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	n, _ := strconv.parse_int(os.args[1])
	x: int
	if n > 5 do x = 10
	fmt.println(x)
}

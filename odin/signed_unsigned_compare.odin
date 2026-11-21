package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	xs := [3]int{1, 2, 3}
	i, _ := strconv.parse_int(os.args[1])
	fmt.println("less" if i < len(xs) else "not less")
}

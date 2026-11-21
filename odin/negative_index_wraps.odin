package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	readings := [3]int{10, 20, 30}
	i, _ := strconv.parse_int(os.args[1])
	fmt.println(readings[i] - readings[i - 1])
}

package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	name := "a👍b"
	n, _ := strconv.parse_int(os.args[1])
	fmt.println(name[:n])
}

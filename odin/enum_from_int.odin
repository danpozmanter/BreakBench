package main

import "core:fmt"
import "core:os"
import "core:strconv"

Color :: enum { Red, Green, Blue }

main :: proc() {
	fmt.println("before")
	n, _ := strconv.parse_int(os.args[1])
	c := Color(n)
	fmt.println(int(c))
}

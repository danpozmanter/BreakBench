package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	n, _ := strconv.parse_int(os.args[1])
	name: string
	switch n {
	case 1:
		name = "one"
	case 2:
		name = "two"
	case:
		name = "other"
	}
	fmt.println(name)
}

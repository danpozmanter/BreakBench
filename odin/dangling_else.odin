package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	n, _ := strconv.parse_int(os.args[1])
	a := n != 0
	b := true
	r := "unset"
	if a {
		if b {
			r = "both"
		}
	} else {
		r = "not a"
	}
	fmt.println(r)
}

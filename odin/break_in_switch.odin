package main

import "core:fmt"
import "core:os"
import "core:strconv"

total_until_stop :: proc(codes: []string) -> int {
	total := 0
	for c in codes {
		code, _ := strconv.parse_int(c)
		switch code {
		case 0:
			break // CONTROL! return total
		case:
			total += code
		}
	}
	return total
}

main :: proc() {
	fmt.println(total_until_stop(os.args[1:]))
}

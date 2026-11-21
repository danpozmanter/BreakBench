// LEVEL: LANGUAGE

package main

import "core:fmt"
import "core:strconv"

Parse_Error :: enum { None, Not_A_Number }

parse_port :: proc(s: string) -> (int, Parse_Error) {
	p, ok := strconv.parse_int(s)
	return p, (nil if ok else .Not_A_Number)
}

main :: proc() {
	p, err := parse_port("x")
	if err != nil {
		fmt.println("error")
	} else {
		fmt.println(p)
	}
}

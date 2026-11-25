package main

import "core:fmt"
import "core:strconv"
import "core:strings"

parse_order :: proc(line: string) -> (int, bool) {
	parts := strings.split(line, ",")
	defer delete(parts)
	return strconv.parse_int(parts[2]) // BREAK!
	// CONTROL! return strconv.parse_int(parts[1])
}

main :: proc() {
	qty, ok := parse_order("widget,5")
	if !ok {
		fmt.println("invalid order")
		return
	}
	fmt.println(qty)
}

package main

import "core:fmt"
import "core:os"
import "core:strconv"

Color :: enum {
	Red,
	Green,
	Blue,
}

name :: proc(c: Color) -> string {
	switch c {
	case .Red:
		return "red"
	case .Green:
		return "green"
	// CONTROL! case .Blue: return "blue"
	}
	return ""
}

main :: proc() {
	i, _ := strconv.parse_int(os.args[1])
	fmt.println(name(Color(i)))
}

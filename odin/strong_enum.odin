package main

import "core:fmt"

Color :: enum { Red, Green, Blue }

name :: proc(c: Color) -> string {
	switch c {
	case .Red: return "red"
	case .Green: return "green"
	case .Blue: return "blue"
	}
	return ""
}

main :: proc() {
	c := Color.Green
	fmt.println(name(7)) // BREAK!
	fmt.println(name(c))
}

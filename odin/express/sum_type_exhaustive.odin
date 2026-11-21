// LEVEL: LANGUAGE

package main

import "core:fmt"

Circle :: struct { r: f64 }
Square :: struct { side: f64 }
Shape :: union { Circle, Square }

name :: proc(s: Shape) -> string {
	switch _ in s {
	case Circle: return "circle"
	case Square: return "square"
	}
	return ""
}

bad :: proc(s: Shape) -> string { // REJECT!
	switch _ in s { // REJECT!
	case Circle: return "circle" // REJECT!
	} // REJECT!
	return "" // REJECT!
} // REJECT!

main :: proc() {
	_ = bad(Circle{1}) // REJECT!
	fmt.println(name(Circle{1}))
}

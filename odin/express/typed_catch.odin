// LEVEL: LANGUAGE

package main

import "core:fmt"

Kind :: enum { None, A, B }

work :: proc(a: bool) -> Kind { return .A if a else .B }

step :: proc(a: bool) -> Kind {
	err := work(a)
	if err == .A {
		fmt.println("caught A")
		return .None
	}
	return err
}

main :: proc() {
	_ = step(true)
	if step(false) == .B {
		fmt.println("passed B")
	}
}

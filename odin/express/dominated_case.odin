// LEVEL: LANGUAGE

package main

import "core:fmt"

describe :: proc(s: string) -> string {
	switch s {
	case "circle": return "circle"
	case: return "other"
	}
}

bad :: proc(s: string) -> string { switch s { case "circle": return "circle"; case "circle": return "again"; case: return "other" } } // REJECT!

main :: proc() {
	fmt.println(describe("square"))
	_ = bad("square") // REJECT!
}

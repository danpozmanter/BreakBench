// LEVEL: LANGUAGE

package main

import "core:fmt"

grade :: proc(score: int) -> string {
	return "pass" if score > 50 else "fail"
}

bad :: proc(score: int) -> string { // REJECT!
	if score > 50 do return "pass" // REJECT!
} // REJECT!

main :: proc() {
	fmt.println(grade(60))
}

// LEVEL: LANGUAGE

package main

import "core:fmt"

main :: proc() {
	id := 42
	if id == 42 { fmt.println("match") }
	if id == "42" { fmt.println("text") } // REJECT!
}

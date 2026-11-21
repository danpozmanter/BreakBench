// LEVEL: LANGUAGE

package main

import "core:fmt"
import "core:strings"

main :: proc() {
	if strings.compare("x", "x") == 0 { fmt.println("same") }
	if strings.compare("x", "x") { fmt.println("different") } // REJECT!
}

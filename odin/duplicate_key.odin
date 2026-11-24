#+feature dynamic-literals
package main

import "core:fmt"

main :: proc() {
	m := map[string]int{"a" = 1, "a" = 2} // CONTROL! m := map[string]int{"a" = 1, "b" = 2}
	fmt.println(len(m))
}

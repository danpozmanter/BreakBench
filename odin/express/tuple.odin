// LEVEL: LANGUAGE

package main

import "core:fmt"

pair :: proc() -> (int, string) {
	return 1, "a"
}

main :: proc() {
	n, s := pair()
	fmt.println(n, s)
}

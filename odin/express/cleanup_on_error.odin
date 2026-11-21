// LEVEL: LANGUAGE

package main

import "core:fmt"

use :: proc(fail: bool) -> bool {
	defer fmt.println("released")
	if fail {
		return false
	}
	return true
}

main :: proc() {
	_ = use(false)
	_ = use(true)
}

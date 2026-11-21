// LEVEL: LANGUAGE

package main

import "core:fmt"

main :: proc() {
	i: i64 = -1
	n: u64 = 3
	fmt.println(i < n) // REJECT!
	fmt.println("less" if i < i64(n) else "not less")
}

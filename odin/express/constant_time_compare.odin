// LEVEL: STD

package main

import "core:crypto"
import "core:fmt"

main :: proc() {
	a, b: [16]u8
	for i in 0 ..< 16 {
		a[i] = 7
		b[i] = 7
	}
	fmt.println("equal" if crypto.compare_constant_time(a[:], b[:]) == 1 else "different")
}

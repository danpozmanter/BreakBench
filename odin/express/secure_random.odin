// LEVEL: STD

package main

import "core:crypto"
import "core:fmt"

main :: proc() {
	buf: [16]u8
	crypto.rand_bytes(buf[:])
	for b in buf {
		fmt.printf("%02x", b)
	}
	fmt.println()
}

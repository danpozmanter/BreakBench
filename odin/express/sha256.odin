// LEVEL: STD

package main

import "core:crypto/sha2"
import "core:fmt"

main :: proc() {
	ctx: sha2.Context_256
	sha2.init_256(&ctx)
	sha2.update(&ctx, transmute([]u8)string("abc"))
	digest: [32]u8
	sha2.final(&ctx, digest[:])
	for b in digest {
		fmt.printf("%02x", b)
	}
	fmt.println()
}

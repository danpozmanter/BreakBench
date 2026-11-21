// LEVEL: STD

package main

import "core:crypto/hmac"
import "core:fmt"

main :: proc() {
	tag: [32]byte
	hmac.sum(.SHA256, tag[:], transmute([]byte)string("The quick brown fox jumps over the lazy dog"), transmute([]byte)string("key"))
	for b in tag do fmt.printf("%02x", b)
	fmt.println()
}

package main

import "core:fmt"

main :: proc() {
	session := make([]u8, 64)
	copy(session[32:], "SECRET-TOKEN")
	delete(session)
	reply := make([]u8, 64)
	for b in reply[32:44] do fmt.printf("%02x", b)
	fmt.println()
}

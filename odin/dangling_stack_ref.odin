package main

import "core:fmt"

make_ref :: proc() -> ^int {
	local := 4242
	return &local // BREAK!
	// CONTROL! p := new(int); p^ = local; return p
}

clobber :: proc() -> int {
	junk: [64]int
	for &j in junk do j = 7
	return junk[63]
}

main :: proc() {
	r := make_ref()
	clobber()
	fmt.println(r^)
}

package main

import "core:fmt"

Callback :: struct {
	fn:  proc(x: int) -> int,
	arg: int,
}

identity :: proc(x: int) -> int {
	return x
}

main :: proc() {
	fs: [3]Callback
	for i in 0 ..< 3 do fs[i] = Callback{identity, i}
	fmt.printf("%d,%d,%d\n", fs[0].fn(fs[0].arg), fs[1].fn(fs[1].arg), fs[2].fn(fs[2].arg))
}

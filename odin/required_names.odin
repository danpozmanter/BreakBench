package main

import "core:fmt"

move :: proc(dx, dy: int) { fmt.println(dx, dy) }

main :: proc() { move(4, 3) }

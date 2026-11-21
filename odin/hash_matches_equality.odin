package main

import "core:fmt"

Point :: struct { x, y: int, label: string }

point_equal :: proc(a, b: Point) -> bool { return a.x == b.x && a.y == b.y }

main :: proc() {
	s := make(map[Point]bool)
	s[Point{1, 2, "a"}] = true
	s[Point{1, 2, "b"}] = true
	fmt.println(len(s))
}

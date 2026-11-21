package main

import "core:fmt"

add_item :: proc(item: string, cart: [dynamic]string = nil) -> [dynamic]string {
	c := cart
	append(&c, item)
	return c
}

main :: proc() {
	add_item("x")
	b := add_item("y")
	fmt.println(len(b))
}

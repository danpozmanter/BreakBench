package main

import "core:fmt"

Item :: struct {
	val: int,
}

main :: proc() {
	v: [dynamic]Item
	append(&v, Item{1})
	r := &v[0]
	for i in 0 ..< 1000 do append(&v, Item{i})
	w: [dynamic]Item
	append(&w, Item{7})
	r.val = 99
	fmt.println(w[0].val)
}

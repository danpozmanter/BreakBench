package main

import "core:fmt"

Item :: struct {
	val: int,
}

main :: proc() {
	v: [dynamic]Item
	append(&v, Item{1})
	// A live allocation after v keeps the allocator from growing it in place, as a real program's would.
	access_log := make([]u8, 256)
	r := &v[0] // BREAK!
	for i in 0 ..< 1000 do append(&v, Item{i})
	w: [dynamic]Item
	append(&w, Item{7})
	r.val = 99 // CONTROL! v[0].val = 99
	fmt.println(w[0].val)
	delete(access_log)
}

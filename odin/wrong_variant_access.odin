package main

import "core:fmt"

Value :: union {
	int,
	string,
}

main :: proc() {
	v: Value = 42
	s := v.(string)
	fmt.println(len(s))
}

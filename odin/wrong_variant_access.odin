package main

import "core:fmt"

Value :: union {
	int,
	string,
}

main :: proc() {
	v: Value = 42
	s := v.(string) // CONTROL! if s, ok := v.(string); ok { fmt.println(len(s)) } else { fmt.println("not text") }
	fmt.println(len(s)) // BREAK!
}

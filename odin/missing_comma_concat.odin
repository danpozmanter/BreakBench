package main

import "core:fmt"

main :: proc() {
	names := []string{
		"alice",
		"bob" // CONTROL! "bob",
		"carol",
	}
	fmt.println(len(names))
}

package main

import "core:fmt"

Config :: struct { port: int }

main :: proc() {
	c := Config{8080}
	c.port = 1 // BREAK!
	fmt.println(c.port)
}

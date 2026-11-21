package main

import "core:fmt"

Config :: struct { timeout: int, retries: int }

main :: proc() {
	c := Config{timeout = 30} // CONTROL! c := Config{timeout = 30, retries = 3}
	fmt.println(c.retries)
}

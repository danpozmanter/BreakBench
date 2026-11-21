package main

import "core:fmt"

Config :: struct {
	color: string,
}

main :: proc() {
	cfg := Config{color = "blue"}
	cfg.colour = "red" // BREAK!
	fmt.println(cfg.color)
}

package main

import "core:fmt"
import "core:os"

HEADER :: 5

main :: proc() {
	message := os.args[1]
	payload := len(message) - HEADER
	if payload < 0 {
		fmt.println("short")
	} else {
		fmt.println(payload)
	}
}

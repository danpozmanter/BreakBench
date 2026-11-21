package main

import "core:fmt"

main :: proc() {
	greeting := "hello"
	greeting[0] = 'j' // CONTROL! greeting = "jello"
	fmt.println(greeting)
}

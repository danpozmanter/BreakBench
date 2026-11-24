package main

import "core:fmt"
import "core:strings"

main :: proc() {
	name := "ada"
	strings.to_upper(name) // CONTROL! name = strings.to_upper(name)
	fmt.println(name)
}

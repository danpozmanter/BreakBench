package main

import "core:fmt"
import "core:strings"

main :: proc() {
	name := "ada"
	strings.to_upper(name) // CONTROL! _ = strings.to_upper(name)
	fmt.println(name)
}

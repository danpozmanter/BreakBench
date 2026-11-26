package main

import "core:fmt"
import "core:os"
import "core:text/regex"

main :: proc() {
	re, _ := regex.create("^[a-z]+$")
	_, ok := regex.match(re, os.args[1])
	fmt.println("accepted" if ok else "rejected")
}

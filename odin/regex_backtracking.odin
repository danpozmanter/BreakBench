package main

import "core:fmt"
import "core:os"
import "core:text/regex"

main :: proc() {
	re, _ := regex.create("^(a+)+$")
	_, ok := regex.match(re, os.args[1])
	fmt.println("match" if ok else "no match")
}

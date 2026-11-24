package main

import "core:fmt"
import "core:os"
import "core:strconv"

Color :: enum { Red, Green, Blue }

main :: proc() {
	fmt.println("before")
	n, _ := strconv.parse_int(os.args[1])
	c := Color(n) // CONTROL! if n < int(min(Color)) || n > int(max(Color)) { fmt.println("invalid"); return }
	fmt.println(int(c)) // CONTROL! fmt.println(n)
}

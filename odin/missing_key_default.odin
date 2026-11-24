package main

import "core:fmt"
import "core:os"

main :: proc() {
	stock := make(map[string]int)
	stock["apple"] = 3
	stock["plum"] = 4
	name := os.args[1]
	fmt.println(stock[name] + 5) // CONTROL! if n, ok := stock[name]; ok { fmt.println(n + 5) } else { fmt.println("unknown") }
}

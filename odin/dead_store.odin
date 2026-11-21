package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	price, _ := strconv.parse_int(os.args[1])
	total := price + 2
	fmt.println(price) // CONTROL! fmt.println(total)
}

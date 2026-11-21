// LEVEL: STD

package main

import "core:container/bit_array"
import "core:fmt"

main :: proc() {
	b := bit_array.create(1024)
	defer bit_array.destroy(b)
	bit_array.set(b, 1000)
	fmt.println(bit_array.get(b, 1000), bit_array.get(b, 999))
}

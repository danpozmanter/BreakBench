// LEVEL: LANGUAGE

package main

import "core:fmt"
import "core:os"
import "core:strconv"

main :: proc() {
	n, _ := strconv.parse_int(os.args[1])
	buf, err := make([]u8, n)
	if err != nil {
		fmt.println("allocation failed")
		return
	}
	delete(buf)
	fmt.println("allocated")
}

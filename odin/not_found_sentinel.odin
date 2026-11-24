package main

import "core:fmt"
import "core:os"
import "core:strings"

main :: proc() {
	line := os.args[1]
	pos := strings.index_byte(line, ':')
	fmt.println(line[pos + 1:]) // CONTROL! if pos < 0 { fmt.println("no colon") } else { fmt.println(line[pos + 1:]) }
}

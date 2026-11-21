// LEVEL: LANGUAGE

package main

import "core:fmt"

BYTE_LIMIT :: 255

#assert(100 <= BYTE_LIMIT)
#assert(300 <= BYTE_LIMIT) // REJECT!

main :: proc() { fmt.println(100) }

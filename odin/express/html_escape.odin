// LEVEL: STD

package main

import "core:encoding/entity"
import "core:fmt"

main :: proc() {
	escaped, _ := entity.escape_html(`<a href="x">Tom & Jerry</a>`)
	fmt.println(escaped)
}

// LEVEL: STD

package main

import (
	"fmt"
	"unicode/utf8"
)

func main() {
	if utf8.Valid([]byte{0x61, 0xFF}) {
		fmt.Println("valid")
	} else {
		fmt.Println("invalid")
	}
}

// LEVEL: STD

package main

import (
	"bytes"
	"crypto/subtle"
	"fmt"
)

func main() {
	a, b := bytes.Repeat([]byte{7}, 16), bytes.Repeat([]byte{7}, 16)
	if subtle.ConstantTimeCompare(a, b) == 1 {
		fmt.Println("equal")
	} else {
		fmt.Println("different")
	}
}

// LEVEL: STD

package main

import (
	"bytes"
	"fmt"
)

func main() {
	var buf bytes.Buffer
	for i := range 100000 {
		buf.WriteByte(byte(i))
	}
	fmt.Println(buf.Len())
}

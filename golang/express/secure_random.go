// LEVEL: STD

package main

import (
	"crypto/rand"
	"encoding/hex"
	"fmt"
)

func main() {
	buf := make([]byte, 16)
	rand.Read(buf)
	fmt.Println(hex.EncodeToString(buf))
}

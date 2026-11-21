// LEVEL: PROJECT

package main

import (
	"fmt"

	"golang.org/x/text/unicode/norm"
)

func main() {
	if norm.NFC.String("é") == "é" {
		fmt.Println("equal")
	} else {
		fmt.Println("different")
	}
}

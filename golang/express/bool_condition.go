// LEVEL: LANGUAGE

package main

import (
	"fmt"
	"strings"
)

func main() {
	if strings.Compare("x", "x") == 0 {
		fmt.Println("same")
	}
	if strings.Compare("x", "x") { fmt.Println("different") } // REJECT!
}

// LEVEL: LANGUAGE

package main

import "fmt"

func main() {
	var ok uint8 = 100
	var tooBig uint8 = 300 // REJECT!
	_ = tooBig             // REJECT!
	fmt.Println(ok)
}

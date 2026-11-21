package main

import "fmt"

func main() {
	var ok uint8 = 100
	var tooBig uint8 = 300 // BREAK!
	_ = tooBig             // BREAK!
	fmt.Println(ok)
}

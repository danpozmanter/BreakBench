package main

import "fmt"

func main() {
	passes := 0
	var i uint8 // BREAK!
	// CONTROL! var i uint16
	for i < 300 {
		passes++
		i++
	}
	fmt.Println(passes)
}

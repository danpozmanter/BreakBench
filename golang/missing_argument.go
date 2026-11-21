package main

import "fmt"

func area(w, h int) int { return w * h }

func main() {
	fmt.Println(area(3)) // BREAK!
	fmt.Println(area(3, 4))
}

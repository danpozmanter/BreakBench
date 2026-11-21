package main

import "fmt"

func total(a, b int) int {
	return // CONTROL! return a + b
	a + b // BREAK!
}

func main() {
	fmt.Println(total(2, 3))
}

package main

import "fmt"

func main() {
	done, total := 3, 5
	_ = total
	fmt.Printf("%d of %d\n", done) // CONTROL! fmt.Printf("%d of %d\n", done, total)
}

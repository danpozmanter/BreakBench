// LEVEL: LANGUAGE

package main

import "fmt"

func main() {
	const x = 1
	x = 2 // REJECT!
	fmt.Println(x)
}

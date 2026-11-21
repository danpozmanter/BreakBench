// LEVEL: LANGUAGE

package main

import "fmt"

func main() {
	a := "abc"
	b := a
	b += "d"
	_ = b
	fmt.Println(a)
}

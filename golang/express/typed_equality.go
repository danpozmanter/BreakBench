// LEVEL: LANGUAGE

package main

import "fmt"

func main() {
	id := 42
	if id == 42 {
		fmt.Println("match")
	}
	if id == "42" { fmt.Println("text") } // REJECT!
}

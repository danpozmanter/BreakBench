// LEVEL: LANGUAGE

package main

import "fmt"

func main() {
	table := [3]int{10, 20, 30}
	fmt.Println(table[1])
	fmt.Println(table[5]) // REJECT!
}

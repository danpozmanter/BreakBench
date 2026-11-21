// LEVEL: LANGUAGE

package main

import "fmt"

func show(f float64) { fmt.Println(f) }

func main() {
	var n int64 = 7
	show(float64(n))
	show(n) // REJECT!
}

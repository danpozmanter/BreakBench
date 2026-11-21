// LEVEL: LANGUAGE

package main

import "fmt"

func pair() (int, string) { return 1, "a" }

func main() {
	n, s := pair()
	fmt.Println(n, s)
}

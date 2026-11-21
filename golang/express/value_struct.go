// LEVEL: LANGUAGE

package main

import "fmt"

type P struct{ X int }

func main() {
	a := P{X: 1}
	b := a
	b.X = 9
	fmt.Println(a.X)
}

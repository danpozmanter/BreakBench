// LEVEL: LANGUAGE

package main

import "fmt"

type Meters float64
type Seconds float64

func main() {
	a, b := Meters(2), Meters(3)
	_ = a + Seconds(3) // REJECT!
	fmt.Println(float64(a + b))
}

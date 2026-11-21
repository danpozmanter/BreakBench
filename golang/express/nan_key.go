// LEVEL: LANGUAGE

package main

import (
	"fmt"
	"strconv"
)

func main() {
	a, _ := strconv.ParseFloat("NaN", 64)
	b, _ := strconv.ParseFloat("NaN", 64)
	s := map[float64]bool{a: true}
	if s[b] {
		fmt.Println("found")
	} else {
		fmt.Println("missing")
	}
}

// LEVEL: STD

package main

import (
	"fmt"
	"math"
	"slices"
	"strings"
)

func main() {
	xs := []float64{3, math.NaN(), 1, 2}
	slices.Sort(xs)
	var shown []string
	for _, x := range xs {
		if math.IsNaN(x) {
			shown = append(shown, "NaN")
		} else {
			shown = append(shown, fmt.Sprint(x))
		}
	}
	fmt.Println(strings.Join(shown, " "))
}

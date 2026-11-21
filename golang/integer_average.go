package main

import "fmt"

func main() {
	values := []int{3, 4}
	sum := values[0] + values[1]
	count := len(values)
	var avg float64 = sum / count // BREAK!
	// CONTROL! var avg float64 = float64(sum) / float64(count)
	fmt.Printf("%.1f\n", avg)
}

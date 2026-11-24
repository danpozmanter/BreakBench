package main

import "fmt" // CONTROL! import ("fmt"; "slices")

func applyUpdate(weights []int) {
	weights[1] = 5
	weights[3] = 0
}

func main() {
	weights := []int{3, 3, 3, 3}
	before := weights // CONTROL! before := slices.Clone(weights)
	applyUpdate(weights)
	changes := 0
	for i := range weights {
		if before[i] != weights[i] {
			changes++
		}
	}
	fmt.Println(changes)
}

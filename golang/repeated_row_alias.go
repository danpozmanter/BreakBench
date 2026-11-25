package main

import "fmt"

func main() {
	grid := make([][]int, 3)
	for i := range grid {
		grid[i] = make([]int, 3)
	}
	grid[0][0] = 1
	ones := 0
	for _, row := range grid {
		for _, cell := range row {
			if cell == 1 {
				ones++
			}
		}
	}
	fmt.Println(ones)
}

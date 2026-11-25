package main

import "core:fmt"

main :: proc() {
	grid: [3][3]int
	grid[0][0] = 1
	ones := 0
	for row in grid {
		for cell in row {
			if cell == 1 do ones += 1
		}
	}
	fmt.println(ones)
}

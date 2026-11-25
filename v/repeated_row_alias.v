fn main() {
	mut grid := [][]int{len: 3, init: []int{len: 3}}
	grid[0][0] = 1
	mut ones := 0
	for row in grid {
		for cell in row {
			if cell == 1 {
				ones++
			}
		}
	}
	println(ones)
}

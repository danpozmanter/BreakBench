struct Point {
	x int
	y int
}

fn main() {
	a := Point{
		x: 1
		y: 2
	}
	b := Point{
		x: 1
		y: 2
	}
	println(if a == b { 'equal' } else { 'different' })
}

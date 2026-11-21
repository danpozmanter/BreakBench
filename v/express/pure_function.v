// LEVEL: LANGUAGE

fn square(x int) int {
	return x * x
}

__global hits = 0 // REJECT!

fn square_counted(x int) int { // REJECT!
	hits++ // REJECT!
	return x * x // REJECT!
} // REJECT!

fn main() {
	println(square(7))
}

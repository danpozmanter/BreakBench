import strconv

fn worker(answer chan int) {
	n := strconv.atoi('x') or { return }
	answer <- n
}

fn main() {
	answer := chan int{}
	spawn worker(answer)
	println(<-answer)
}

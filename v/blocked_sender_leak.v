fn worker(answers chan int) {
	answers <- 42
}

fn first_answer(mut workers []thread) int {
	answers := chan int{} // BREAK!
	// CONTROL! answers := chan int{cap: 2}
	for _ in 0 .. 2 {
		workers << spawn worker(answers)
	}
	return <-answers
}

fn main() {
	mut workers := []thread{}
	println(first_answer(mut workers))
	workers.wait()
	println('done')
}

import strconv

fn worker(answer chan int) {
	n := strconv.atoi('x') or { return } // CONTROL! n := strconv.atoi('x') or {
		// CONTROL! answer.close()
		// CONTROL! return
	// CONTROL! }
	answer <- n
}

fn main() {
	answer := chan int{}
	spawn worker(answer)
	println(<-answer) // CONTROL! got := <-answer or {
		// CONTROL! println('failed')
		// CONTROL! return
	// CONTROL! }
	// CONTROL! println(got)
}

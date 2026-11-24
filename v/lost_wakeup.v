fn worker(woken chan bool, done chan bool) {
	_ := <-woken
	println('done')
	done <- true
}

fn main() {
	woken := chan bool{} // CONTROL! woken := chan bool{cap: 1}
	done := chan bool{}
	woken <- true
	spawn worker(woken, done)
	_ := <-done
}

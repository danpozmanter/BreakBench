fn worker(lists chan []int, go_on chan bool, done chan bool) {
	received := <-lists
	_ := <-go_on
	println(received[0])
	done <- true
}

fn main() {
	lists := chan []int{}
	go_on := chan bool{}
	done := chan bool{}
	spawn worker(lists, go_on, done)
	mut list := [1, 2, 3]
	lists <- list // CONTROL! lists <- list.clone()
	list[0] = 99
	go_on <- true
	_ := <-done
}

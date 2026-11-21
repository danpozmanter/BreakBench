// LEVEL: LANGUAGE

fn work(ch chan int) {
	for v in 1 .. 4 {
		ch <- v
	}
	ch.close()
}

fn main() {
	ch := chan int{}
	spawn work(ch)
	mut got := []string{}
	for {
		v := <-ch or { break }
		got << v.str()
	}
	println(got.join(' '))
}

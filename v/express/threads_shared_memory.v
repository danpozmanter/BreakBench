// LEVEL: LANGUAGE

fn fill(mut slots []int, start int) {
	for i in start .. start + 5 {
		slots[i] = i
	}
}

fn main() {
	mut slots := []int{len: 10}
	a := spawn fill(mut slots, 0)
	b := spawn fill(mut slots, 5)
	a.wait()
	b.wait()
	mut sum := 0
	for x in slots {
		sum += x
	}
	println(sum)
}

import os

fn main() {
	text := os.args[1]
	mut counts := []int{len: 256}
	for b in text {
		counts[b]++
	}
	mut high := 0
	for n in counts[128..] {
		high += n
	}
	println(high)
}

fn main() {
	xs := [1, 2, 3, 4, 5, 6]
	evens := xs.filter(it % 2 == 0)
	mut total := 0
	for x in evens {
		total += x
	}
	println('${total} ${evens.len}')
}

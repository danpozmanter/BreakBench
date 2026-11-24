fn main() {
	mut xs := [1, 2, 2, 3]
	for x in xs { // CONTROL! xs = xs.filter(it != 2)
		if x == 2 { // BREAK!
			xs.delete(xs.index(x)) // BREAK!
		} // BREAK!
	} // BREAK!
	println(xs.map(it.str()).join(','))
}

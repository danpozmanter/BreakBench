fn main() {
	mut xs := [1, 2, 2, 3]
	for x in xs {
		if x == 2 {
			xs.delete(xs.index(x))
		}
	}
	println(xs.map(it.str()).join(','))
}

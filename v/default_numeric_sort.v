fn main() {
	mut scores := [10, 9, 1]
	scores.sort()
	println(scores.map(it.str()).join(' '))
}

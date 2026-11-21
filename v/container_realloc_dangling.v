struct Item {
mut:
	val int
}

fn main() {
	mut v := [Item{
		val: 1
	}]
	mut r := &v[0] // BREAK!
	// CONTROL! mut r := &Item{}
	for i in 0 .. 1000 {
		v << Item{
			val: i
		}
	}
	w := [Item{
		val: 7
	}]
	r.val = 99
	println(w[0].val)
}

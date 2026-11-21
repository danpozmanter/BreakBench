// LEVEL: LANGUAGE

fn main() {
	xs := [10, 20, 30]
	v := xs[5] or {
		println('none')
		return
	}
	println(v)
}

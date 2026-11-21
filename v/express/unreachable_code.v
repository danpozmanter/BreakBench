// LEVEL: LANGUAGE

fn check(n int) {
	if n > 100 {
		println('big')
		return
	}
	println('ok')
	return
	checked := true // REJECT!
}

fn main() {
	check(1)
}

import os
// CONTROL! import strconv

fn main() {
	n := os.args[1].i64() // CONTROL! n := strconv.atoi64(os.args[1]) or {
		// CONTROL! println('invalid')
		// CONTROL! return
	// CONTROL! }
	println(n)
}

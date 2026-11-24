import os
// CONTROL! import strconv

fn main() {
	n := os.args[1].int() // CONTROL! n := strconv.atoi(os.args[1]) or {
		// CONTROL! println('invalid')
		// CONTROL! return
	// CONTROL! }
	println(n + 1)
}

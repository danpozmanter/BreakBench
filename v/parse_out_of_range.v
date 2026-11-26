import os
// CONTROL! import strconv

fn main() {
	// strconv.parse_int clamps out-of-range input without an error, so the fix uses atoi64.
	n := os.args[1].i64() // CONTROL! n := strconv.atoi64(os.args[1]) or {
		// CONTROL! println('invalid')
		// CONTROL! return
	// CONTROL! }
	println(n)
}

import os
import strconv

fn sum(items []string) !i64 {
	mut total := i64(0)
	for item in items {
		total += strconv.parse_int(item, 10, 64)!
	}
	return total
}

fn main() {
	worker := spawn sum(os.args[1..])
	total := worker.wait() or { panic(err) } // CONTROL! total := worker.wait() or {
		// CONTROL! println('failed')
		// CONTROL! return
	// CONTROL! }
	println('total ${total}')
}

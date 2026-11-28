import os
import x.json2

fn main() {
	depth := os.args[1].int()
	// CONTROL! if depth > 1000 { println('refused') return }
	json2.decode[json2.Any]('['.repeat(depth) + ']'.repeat(depth)) or {
		println('refused')
		return
	}
	println('parsed')
}

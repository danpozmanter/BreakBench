import os
import strconv

fn main() {
	n := strconv.atoi(os.args[1]) or {
		println('invalid')
		return
	}
	println(n + 1)
}

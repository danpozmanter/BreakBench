// LEVEL: STD

import os
import strconv

fn main() {
	strconv.atoi(os.args[1]) or {
		println('invalid')
		return
	}
	println('valid')
}

// LEVEL: LANGUAGE

import os

fn main() {
	println('before')
	assert os.args.len + 1 == 3
	println('after')
}

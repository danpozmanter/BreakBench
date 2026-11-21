// LEVEL: STD

import os

fn main() {
	if _ := os.getenv_opt('BB_UNSET') {
		println('present')
	} else {
		println('absent')
	}
}

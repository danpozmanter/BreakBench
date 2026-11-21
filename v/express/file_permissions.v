// LEVEL: STD

import os

fn main() {
	path := '/tmp/bb_perm.txt'
	os.rm(path) or {}
	mut f := os.open_file(path, 'w', 0o600)!
	f.close()
	st := os.stat(path)!
	println('${st.mode & 0o777:o}')
	os.rm(path)!
}

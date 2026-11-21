// LEVEL: STD

import io.util
import os

fn main() {
	mut f, path := util.temp_file()!
	f.write_string('ok')!
	f.close()
	println(os.read_file(path)!)
	os.rm(path)!
}

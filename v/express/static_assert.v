// LEVEL: LANGUAGE

const byte_limit = 255

fn main() {
	$if 300 > byte_limit { $compile_error('300 does not fit in a byte') } // REJECT!
	println(100)
}

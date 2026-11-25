import os

fn total_until_stop(codes []string) int {
	mut total := 0
	for c in codes {
		code := c.int()
		match code {
			0 { break } // CONTROL! 0 { return total }
			else { total += code }
		}
	}
	return total
}

fn main() {
	println(total_until_stop(os.args[1..]))
}

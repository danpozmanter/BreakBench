import os

fn main() {
	line := os.args[1]
	pos := line.index(':')
	println(line[pos + 1..]) // CONTROL! println(line[(pos or { -1 }) + 1..])
}

import os

fn main() {
	readings := [10, 20, 30]
	i := os.args[1].int()
	println(readings[i] - readings[i - 1]) // CONTROL! if i > 0 { println(readings[i] - readings[i - 1]) } else { println('no previous') }
}

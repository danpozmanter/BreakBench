import os

fn main() {
	name := 'a👍b'
	n := os.args[1].int()
	println(name[..n])
}

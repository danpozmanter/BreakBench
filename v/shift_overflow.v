import os

fn main() {
	s := os.args[1].int()
	one := u64(1)
	println(one << s)
}

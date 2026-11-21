import os

fn main() {
	n := os.args[1].int()
	name := match n {
		1 { 'one' }
		2 { 'two' }
		else { 'other' }
	}
	println(name)
}

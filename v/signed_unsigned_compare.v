import os

fn main() {
	xs := [1, 2, 3]
	i := os.args[1].int()
	println(if i < xs.len { 'less' } else { 'not less' })
}

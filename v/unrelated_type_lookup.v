import os

fn main() {
	ids := [10, 20, 30]
	id := os.args[1]
	println(if id in ids { 'found' } else { 'missing' }) // CONTROL! println(if id.int() in ids { 'found' } else { 'missing' })
}

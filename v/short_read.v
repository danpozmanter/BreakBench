import os

fn main() {
	result := os.execute('printf HELLO-WO; sleep 0.2; printf RLD-1234')
	println(result.output)
}

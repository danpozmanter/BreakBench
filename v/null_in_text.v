import os

fn find_name(id int) ?string {
	if id == 1 {
		return 'alice'
	}
	return none
}

fn main() {
	name := find_name(os.args[1].int())
	println('hello, ${name}') // CONTROL! println('hello, ${name or { 'nobody' }}')
}

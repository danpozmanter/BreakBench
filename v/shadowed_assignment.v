import os

fn main() {
	mut status := 'pending'
	if os.args[1] == 'ok' {
		status := 'done' // CONTROL! status = 'done'
		eprintln('status: ${status}')
	}
	println(status)
}

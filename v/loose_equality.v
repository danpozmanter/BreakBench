import os

fn main() {
	code := os.args[1]
	println(if code == 0 { 'same' } else { 'different' }) // CONTROL! println(if code == "0" { 'same' } else { 'different' })
}

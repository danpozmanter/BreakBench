import os

const header = 5

fn main() {
	message := os.args[1]
	payload := message.len - header
	if payload < 0 {
		println('short')
	} else {
		println(payload)
	}
}

import os

fn size(n int) string {
	mut label := 'small'
	if n > 5; { // CONTROL! if n > 5 {
		label = 'big'
	}
	return label
}

fn main() {
	println(size(os.args[1].int()))
	println(size(os.args[2].int()))
}

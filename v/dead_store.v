import os

fn main() {
	price := os.args[1].int()
	total := price + 2
	println(price) // CONTROL! println(total)
}

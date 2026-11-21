import os

fn main() {
	stock := {
		'apple': 3
		'plum':  4
	}
	name := os.args[1]
	println(stock[name] + 5)
}

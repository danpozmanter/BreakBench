import os

fn main() {
	stock := {
		'apple': 3
		'plum':  4
	}
	name := os.args[1]
	println(stock[name] + 5) // CONTROL! if name in stock { println(stock[name] + 5) } else { println('unknown') }
}

import arrays
import os

fn main() {
	xs := os.args[1..].map(it.int())
	m := arrays.max(xs) // CONTROL! m := arrays.max(xs) or { -1 }
	println(m + 1)
}

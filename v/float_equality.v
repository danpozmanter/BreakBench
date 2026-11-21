import os

fn main() {
	x := os.args[1].f64()
	y := os.args[2].f64()
	a := x + y
	println(if a == 0.3 { 'equal' } else { 'not equal' })
}

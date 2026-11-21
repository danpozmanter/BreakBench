import os

fn main() {
	s := 'ab' + os.args[1]
	println(if s == 'abc' { 'equal' } else { 'different' })
}

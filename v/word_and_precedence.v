import os

fn main() {
	ready := os.args[1] == 'yes'
	approved := os.args[2] == 'yes'
	ok := ready && approved
	println(if ok { 'go' } else { 'wait' })
}

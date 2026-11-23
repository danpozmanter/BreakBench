import os

@[heap]
struct Node {
	data []u8
mut:
	other &Node = unsafe { nil }
}

fn main() {
	n := os.args[1].int()
	for _ in 0 .. n {
		mut parent := &Node{
			data: []u8{len: 4096, init: 1}
		}
		mut child := &Node{
			data: []u8{len: 4096, init: 1}
		}
		parent.other = child
		child.other = parent
	}
	println('done')
}

import os

struct Node {
	value i64
	next  &Node = unsafe { nil }
}

fn build_and_release(n i64) i64 {
	mut head := &Node(unsafe { nil })
	for i in i64(0) .. n {
		head = &Node{
			value: i
			next: head
		}
	}
	return if isnil(head) { 0 } else { head.value }
}

fn main() {
	build_and_release(os.args[1].i64())
	println('done')
}

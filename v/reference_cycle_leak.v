import os

@[heap]
struct Node {
mut:
	next    &Node = unsafe { nil }
	payload []u8
}

@[heap]
struct Obj {
mut:
	payload  []u8
	callback fn () int = unsafe { nil }
}

fn main() {
	mut total := i64(0)
	for _ in 0 .. os.args[1].int() {
		mut a := &Node{
			payload: []u8{len: 2048}
		}
		mut b := &Node{
			next:    a
			payload: []u8{len: 2048}
		}
		a.next = b
		mut o := &Obj{
			payload: []u8{len: 2048}
		}
		o.callback = fn [o] () int {
			return o.payload.len
		}
		total += o.callback()
	}
	println(if total < 0 { 'unreachable' } else { 'done' })
}

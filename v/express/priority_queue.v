// LEVEL: STD

import datatypes

fn main() {
	mut q := datatypes.MinHeap[int]{}
	for v in [3, 1, 2] {
		q.insert(v)
	}
	a := q.pop() or { 0 }
	b := q.pop() or { 0 }
	c := q.pop() or { 0 }
	println('${a} ${b} ${c}')
}

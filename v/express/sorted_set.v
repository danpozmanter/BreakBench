// LEVEL: STD

import datatypes

fn main() {
	mut s := datatypes.BSTree[int]{}
	for v in [3, 1, 2] {
		s.insert(v)
	}
	println(s.in_order_traversal().map(it.str()).join(' '))
}

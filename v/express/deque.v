// LEVEL: STD

import datatypes

fn main() {
	mut d := datatypes.DoublyLinkedList[int]{}
	d.push_back(1)
	d.push_front(0)
	d.push_back(2)
	front := d.pop_front() or { 0 }
	back := d.pop_back() or { 0 }
	println('${front} ${back}')
}

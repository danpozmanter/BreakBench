// LEVEL: STD

package main

import "core:container/priority_queue"
import "core:fmt"

main :: proc() {
	q: priority_queue.Priority_Queue(int)
	priority_queue.init(&q, proc(a, b: int) -> bool { return a < b }, priority_queue.default_swap_proc(int))
	for v in ([]int{3, 1, 2}) {
		priority_queue.push(&q, v)
	}
	a := priority_queue.pop(&q)
	b := priority_queue.pop(&q)
	c := priority_queue.pop(&q)
	fmt.println(a, b, c)
}

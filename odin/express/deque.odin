// LEVEL: STD

package main

import "core:container/queue"
import "core:fmt"

main :: proc() {
	d: queue.Queue(int)
	queue.init(&d)
	queue.push_back(&d, 1)
	queue.push_front(&d, 0)
	queue.push_back(&d, 2)
	fmt.println(queue.pop_front(&d), queue.pop_back(&d))
}

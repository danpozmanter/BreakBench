package main

import "core:fmt"
import "core:os"
import "core:strconv"

Node :: struct {
	value: i64,
	next:  ^Node,
}

main :: proc() {
	n, _ := strconv.parse_i64(os.args[1])
	head: ^Node
	for i in 0 ..< n {
		node := new(Node)
		node^ = Node{i, head}
		head = node
	}
	for head != nil {
		next := head.next
		free(head)
		head = next
	}
	fmt.println("done")
}

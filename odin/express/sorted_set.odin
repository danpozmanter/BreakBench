// LEVEL: STD

package main

import "core:container/rbtree"
import "core:fmt"

main :: proc() {
	t: rbtree.Tree(int, struct{})
	rbtree.init(&t)
	for v in ([]int{3, 1, 2}) {
		_, _, _ = rbtree.find_or_insert(&t, v, struct{}{})
	}
	it := rbtree.iterator(&t, .Forward)
	sep := ""
	for node in rbtree.iterator_next(&it) {
		fmt.print(sep, node.key, sep = "")
		sep = " "
	}
	fmt.println()
}

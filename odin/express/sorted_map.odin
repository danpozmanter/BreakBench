// LEVEL: STD

package main

import "core:container/rbtree"
import "core:fmt"

main :: proc() {
	t: rbtree.Tree(string, int)
	rbtree.init(&t)
	_, _, _ = rbtree.find_or_insert(&t, "c", 1)
	_, _, _ = rbtree.find_or_insert(&t, "a", 2)
	_, _, _ = rbtree.find_or_insert(&t, "b", 3)
	it := rbtree.iterator(&t, .Forward)
	sep := ""
	for node in rbtree.iterator_next(&it) {
		fmt.print(sep, node.key, sep = "")
		sep = " "
	}
	fmt.println()
}

package main

import "core:fmt"
// CONTROL! import "core:slice"
import "core:sync/chan"
import "core:thread"

Pipes :: struct {
	lists: chan.Chan([]int),
	go_on: chan.Chan(bool),
}

worker :: proc(pipes: Pipes) {
	received, _ := chan.recv(pipes.lists)
	_, _ = chan.recv(pipes.go_on)
	fmt.println(received[0])
}

main :: proc() {
	lists, _ := chan.create(chan.Chan([]int), context.allocator)
	go_on, _ := chan.create(chan.Chan(bool), context.allocator)
	t := thread.create_and_start_with_poly_data(Pipes{lists, go_on}, worker)
	list := make([]int, 3)
	list[0], list[1], list[2] = 1, 2, 3
	chan.send(lists, list) // CONTROL! chan.send(lists, slice.clone(list))
	list[0] = 99
	chan.send(go_on, true)
	thread.join(t)
}

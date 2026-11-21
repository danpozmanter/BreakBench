package main

import "core:fmt"
import "core:thread"

Job :: struct {
	table: ^map[i64]i64,
	base:  i64,
}

writer :: proc(job: Job) {
	for k in i64(0) ..< 100_000 do job.table[job.base + k] = k
}

main :: proc() {
	table := make(map[i64]i64)
	threads: [8]^thread.Thread
	for &t, i in threads do t = thread.create_and_start_with_poly_data(Job{&table, i64(i) * 100_000}, writer)
	for t in threads do thread.join(t)
	fmt.println(len(table))
}

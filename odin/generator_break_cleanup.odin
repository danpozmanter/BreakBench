package main

import "core:fmt"
import "core:os"

LOCK :: "/tmp/bb_scratch/reader.lock"

Rows :: struct {
	lines: [3]string,
	index: int,
}

rows :: proc() -> Rows {
	_ = os.write_entire_file(LOCK, nil)
	return Rows{lines = {"alpha", "beta", "gamma"}}
}

rows_next :: proc(it: ^Rows) -> (line: string, ok: bool) {
	if it.index < len(it.lines) {
		it.index += 1
		return it.lines[it.index - 1], true
	}
	os.remove(LOCK)
	return "", false
}

main :: proc() {
	it := rows()
	for line in rows_next(&it) {
		fmt.println(line)
		break // BREAK!
	}
}

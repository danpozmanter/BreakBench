import os

const lock_path = '/tmp/bb_scratch/reader.lock'

struct Rows {
	lines []string = ['alpha', 'beta', 'gamma']
mut:
	index int
}

fn rows() Rows {
	os.write_file(lock_path, '') or { panic(err) }
	return Rows{}
}

fn (mut r Rows) next() ?string {
	if r.index < r.lines.len {
		r.index++
		return r.lines[r.index - 1]
	}
	os.rm(lock_path) or {}
	return none
}

fn main() {
	for line in rows() {
		println(line)
		break // BREAK!
	}
}

import os

@[heap]
struct Rec {
mut:
	data []u8
}

fn main() {
	n := os.args[1].int()
	mut seen := 0
	for _ in 0 .. n {
		rec := &Rec{
			data: []u8{len: 4096, init: 1}
		}
		seen += rec.data[0]
	}
	println(if seen == n { 'done' } else { 'lost' })
}

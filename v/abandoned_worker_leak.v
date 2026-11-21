import os

fn answer(out chan []i64, seed i64) {
	out <- []i64{len: 8192, init: seed}
}

fn main() {
	rounds := os.args[1].int()
	for i in 0 .. rounds {
		out := chan []i64{}
		spawn answer(out, i64(i))
		spawn answer(out, i64(i + 1))
		first := <-out
		assert first.len == 8192
	}
	println('done')
}

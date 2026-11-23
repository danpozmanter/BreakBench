import os

fn main() {
	count := os.args[1].i64()
	mut source := os.open('/dev/zero') or { panic(err) }
	defer {
		source.close()
	}
	mut total := i64(0)
	for _ in 0 .. count {
		mut message := []u8{len: 4096}
		total += source.read(mut message) or { panic(err) }
	}
	println(total)
}

type Value = int | string

fn main() {
	v := Value(42)
	s := v as string // CONTROL! if v is string { println(v.len) } else { println('not text') }
	println(s.len) // BREAK!
}

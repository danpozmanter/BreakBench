type Value = int | string

fn main() {
	v := Value(42)
	s := v as string
	println(s.len)
}

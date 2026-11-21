struct Rec {
	value i64
}

fn main() {
	mut a := &Rec{
		value: 1234
	}
	b := a
	a = &Rec{}
	c := &Rec{
		value: 6666
	}
	_ = c
	_ = a
	println(b.value)
}

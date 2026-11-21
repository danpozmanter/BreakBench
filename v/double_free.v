struct Rec {
	value i64
}

fn main() {
	mut a := &Rec{
		value: 0
	}
	a = &Rec{}
	a = &Rec{}
	_ = a
	x := &Rec{
		value: 1
	}
	y := &Rec{
		value: 2
	}
	_ = y
	println(x.value)
}

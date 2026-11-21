// LEVEL: LANGUAGE

struct Rec {
	id   int
	data [1016]u8
}

fn main() {
	mut last := &Rec{}
	for i in 0 .. 4000000 {
		last = &Rec{
			id: i
		}
	}
	println(last.id)
}

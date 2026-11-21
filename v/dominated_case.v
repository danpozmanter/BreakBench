enum Shape {
	circle
	square
}

fn describe(s Shape) string {
	return match s {
		.circle { 'circle' }
		else { 'other' }
	}
}

fn bad(s Shape) string { // BREAK!
	return match s { // BREAK!
		else { 'other' } // BREAK!
		.circle { 'circle' } // BREAK!
	} // BREAK!
} // BREAK!

fn main() {
	println(describe(.square))
}

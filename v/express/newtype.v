// LEVEL: LANGUAGE

struct Meters {
	v f64
}

struct Seconds {
	v f64
}

fn (a Meters) + (b Meters) Meters {
	return Meters{a.v + b.v}
}

fn main() {
	total := Meters{2} + Meters{3}
	wrong := Meters{2} + Seconds{3} // REJECT!
	println(total.v)
}

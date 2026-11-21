struct Offset {
	dx int
	dy int
}

fn move(o Offset) {
	println('${o.dx} ${o.dy}')
}

fn main() {
	move(Offset{4, 3})
}

fn add_item(item string, cart []string) []string {
	mut out := cart.clone()
	out << item
	return out
}

fn main() {
	add_item('x', [])
	b := add_item('y', [])
	println(b.len)
}

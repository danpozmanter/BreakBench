fn main() {
	mut seen := map[string]bool{}
	mut key := [1, 2]
	seen[key.str()] = true
	key[0] = 9
	for e, _ in seen {
		println(if e in seen { 'found' } else { 'lost' })
	}
}

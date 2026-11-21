// LEVEL: LANGUAGE

fn main() {
	mut counts := map[string]int{}
	for w in ['a', 'b', 'a'] {
		counts[w]++
	}
	println('a=${counts['a']} b=${counts['b']}')
}

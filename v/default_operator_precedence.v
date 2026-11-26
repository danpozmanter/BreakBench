import os

fn cached_count(name string) ?int {
	if name == 'ada' {
		return 4
	}
	return none
}

fn main() {
	count := cached_count(os.args[1]) or { 0 } + 1 // CONTROL! count := (cached_count(os.args[1]) or { 0 }) + 1
	println(count)
}

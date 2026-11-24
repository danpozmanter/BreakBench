// UNDEFINED: V emits one C call with both arguments, and C leaves their order unspecified; clang happens to run them left to right
struct Counter {
mut:
	n int
}

fn (mut c Counter) next() int {
	c.n++
	return c.n
}

fn pair(a int, b int) string {
	return '${a} ${b}'
}

fn main() {
	mut c := Counter{}
	println(pair(c.next(), c.next()))
}

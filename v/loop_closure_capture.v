type IntFn = fn () int

fn main() {
	mut fs := []IntFn{}
	for i in 0 .. 3 {
		fs << fn [i] () int {
			return i
		}
	}
	mut parts := []string{}
	for f in fs {
		parts << f().str()
	}
	println(parts.join(','))
}

import math

fn main() {
	mut xs := [5.0, math.nan(), 3.0, 1.0, math.nan(), 4.0, 2.0]
	xs.sort()
	finite := xs.filter(!math.is_nan(it))
	mut ordered := true
	for i in 1 .. finite.len {
		if finite[i - 1] > finite[i] {
			ordered = false
		}
	}
	println(if ordered { 'ordered' } else { 'unordered' })
}

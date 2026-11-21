fn main() {
	values := [3, 4]
	sum := values[0] + values[1]
	count := values.len
	mut avg := 0.0
	avg = sum / count // BREAK!
	// CONTROL! avg = f64(sum) / f64(count)
	println('${avg:.1f}')
}

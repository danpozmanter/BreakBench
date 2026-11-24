import os
// CONTROL! import strconv

fn main() {
	x := os.args[1].f64()
	v := i64(x) // CONTROL! v := strconv.f64_to_str_l(x).all_before(".")
	println(v)
}

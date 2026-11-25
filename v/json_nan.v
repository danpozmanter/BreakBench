import json
import os
// CONTROL! import math

struct Report {
	mean f64
}

fn main() {
	count := os.args[1].int()
	mean := 0.0 / f64(count)
	println(json.encode(Report{ mean: mean })) // BREAK!
	// CONTROL! if math.is_nan(mean) {
		// CONTROL! println('refused')
	// CONTROL! } else {
		// CONTROL! println(json.encode(Report{ mean: mean }))
	// CONTROL! }
}

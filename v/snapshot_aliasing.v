fn apply_update(mut weights []int) {
	weights[1] = 5
	weights[3] = 0
}

fn main() {
	mut weights := [3, 3, 3, 3]
	before := weights // BREAK!
	// CONTROL! before := weights.clone()
	apply_update(mut weights)
	mut changes := 0
	for i in 0 .. weights.len {
		if before[i] != weights[i] {
			changes++
		}
	}
	println(changes)
}

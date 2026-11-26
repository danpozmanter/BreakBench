fn main() {
	mut jobs := [1, 2, 3]
	assert jobs.pop() == 3 // CONTROL! last := jobs.pop(); assert last == 3
	println(jobs.len)
}

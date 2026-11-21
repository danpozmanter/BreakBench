fn main() {
	mut table := map[i64]i64{}
	mut threads := []thread{}
	for t in 0 .. 8 {
		threads << spawn fn [mut table, t] () {
			for k in 0 .. 100_000 {
				table[i64(t) * 100_000 + k] = k
			}
		}()
	}
	threads.wait()
	println(table.len)
}

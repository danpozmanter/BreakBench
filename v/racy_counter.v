fn main() {
	mut count := 0
	a := spawn fn [mut count] () {
		for _ in 0 .. 1000000 {
			count++
		}
	}()
	b := spawn fn [mut count] () {
		for _ in 0 .. 1000000 {
			count++
		}
	}()
	a.wait()
	b.wait()
	println(count)
}

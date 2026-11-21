import time

struct Store {
mut:
	count int
}

fn save(shared store Store) {
	time.sleep(50 * time.millisecond)
	lock store {
		store.count++
	}
}

fn main() {
	shared store := Store{}
	task := spawn save(shared store) // CONTROL! task := spawn save(shared store); task.wait()
	rlock store {
		println(store.count)
	}
}

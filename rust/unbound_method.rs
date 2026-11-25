struct Counter {
    count: i64,
}

impl Counter {
    fn increment(&mut self) {
        self.count += 1;
    }
}

fn run_twice(mut f: impl FnMut()) {
    f();
    f();
}

fn main() {
    let mut counter = Counter { count: 0 };
    run_twice(counter.increment); // CONTROL! run_twice(|| counter.increment());
    println!("{}", counter.count);
}

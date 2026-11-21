// LEVEL: STD

struct Guard;

impl Drop for Guard {
    fn drop(&mut self) { println!("cleanup"); }
}

fn work() {
    let _g = Guard;
    panic!("boom");
}

fn main() {
    std::panic::set_hook(Box::new(|_| {}));
    if std::panic::catch_unwind(work).is_err() {
        println!("recovered");
    }
}

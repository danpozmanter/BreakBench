// LEVEL: STD

fn main() {
    std::panic::set_hook(Box::new(|_| println!("hook ran")));
    panic!("boom");
}

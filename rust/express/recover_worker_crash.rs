// LEVEL: STD

fn main() {
    std::panic::set_hook(Box::new(|_| {}));
    let worker = std::thread::spawn(|| panic!("boom"));
    if worker.join().is_err() {
        println!("worker crashed");
    }
}

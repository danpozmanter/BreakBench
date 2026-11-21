use std::thread;

fn main() {
    let args: Vec<String> = std::env::args().skip(1).collect();
    let worker = thread::spawn(move || args.iter().map(|a| a.parse::<i64>().unwrap()).sum::<i64>());
    let total = worker.join().unwrap();
    println!("total {}", total);
}

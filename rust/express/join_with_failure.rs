// LEVEL: STD

fn main() {
    let worker = std::thread::spawn(|| -> Result<i64, String> { Err("bad input".to_string()) });
    match worker.join().unwrap() {
        Ok(v) => println!("{v}"),
        Err(e) => println!("worker failed: {e}"),
    }
}

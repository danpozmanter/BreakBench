const HEADER: usize = 5;

fn main() {
    let message = std::env::args().nth(1).unwrap();
    let payload = message.len() - HEADER; // CONTROL! let payload = message.len() as i64 - HEADER as i64;
    if payload < 0 {
        println!("short");
    } else {
        println!("{payload}");
    }
}

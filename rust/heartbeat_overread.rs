fn main() {
    let claimed: usize = std::env::args().nth(1).unwrap().parse().unwrap();
    let mut buf = [0u8; 64];
    buf[2..17].copy_from_slice(b"SECRET-KEY-0042");
    buf[..2].copy_from_slice(b"hi");
    let payload = &buf[..2];
    // CONTROL! if claimed > payload.len() { println!("invalid"); return; }
    let reply = &payload[..claimed];
    println!("{}", String::from_utf8_lossy(reply));
}

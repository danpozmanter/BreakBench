fn main() {
    let mut session = vec![0u8; 64];
    session[32..44].copy_from_slice(b"SECRET-TOKEN");
    drop(session);
    let reply = vec![0u8; 64];
    let hex: String = reply[32..44].iter().map(|b| format!("{:02x}", b)).collect();
    println!("{}", hex);
}

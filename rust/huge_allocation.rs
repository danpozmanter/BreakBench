fn main() {
    let n: usize = std::env::args().nth(1).unwrap().parse().unwrap();
    let mut buf = vec![0u8; n];
    buf[n - 1] = 1;
    println!("{}", buf.len());
}

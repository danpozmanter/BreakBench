fn main() {
    let n: usize = std::env::args().nth(1).unwrap().parse().unwrap();
    // CONTROL! if n > 1 << 30 { println!("too large"); return; }
    let mut buf = vec![0u8; n];
    buf[n - 1] = 1;
    // A real program goes on to use its buffer, so the optimizer may not drop the allocation.
    std::hint::black_box(&buf);
    println!("{}", buf.len());
}

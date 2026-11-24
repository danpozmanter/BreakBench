struct Frame {
    buf: [i32; 4],
    guard: i32,
}

fn main() {
    let mut f = Frame { buf: [0; 4], guard: 7 };
    let idx: usize = std::env::args().nth(1).unwrap().parse().unwrap();
    f.buf[idx] = 99; // CONTROL! if idx < f.buf.len() { f.buf[idx] = 99; }
    println!("{}", f.guard);
}

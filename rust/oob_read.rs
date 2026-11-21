struct Frame {
    buf: [i32; 4],
    secret: i32,
}

fn main() {
    let f = Frame { buf: [1, 2, 3, 4], secret: 42 };
    let idx: usize = std::env::args().nth(1).unwrap().parse().unwrap();
    println!("{}", f.buf[idx]);
}

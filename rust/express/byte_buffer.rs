// LEVEL: STD

fn main() {
    let mut buf: Vec<u8> = Vec::new();
    for i in 0..100_000u32 { buf.push(i as u8); }
    println!("{}", buf.len());
}

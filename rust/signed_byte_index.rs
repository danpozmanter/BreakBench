fn main() {
    let text = std::env::args().nth(1).unwrap();
    let mut counts = [0u32; 256];
    for b in text.bytes() {
        counts[b as usize] += 1;
    }
    let high: u32 = counts[128..].iter().sum();
    println!("{}", high);
}

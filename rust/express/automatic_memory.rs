// LEVEL: LANGUAGE

struct Rec {
    id: u64,
    data: [u8; 1016],
}

fn main() {
    let mut last = Box::new(Rec { id: 0, data: [0; 1016] });
    for i in 0..4_000_000 {
        last = Box::new(Rec { id: i, data: [0; 1016] });
    }
    println!("{}", last.id + u64::from(last.data[0]));
}

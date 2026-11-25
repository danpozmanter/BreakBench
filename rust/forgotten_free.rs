struct Rec {
    data: [u8; 4096],
}

fn main() {
    let n: usize = std::env::args().nth(1).unwrap().parse().unwrap();
    let mut seen = 0u64;
    for _ in 0..n {
        let rec = Box::new(Rec { data: [1; 4096] });
        seen += u64::from(std::hint::black_box(&rec).data[0]);
    }
    assert_eq!(seen as usize, n);
    println!("done");
}

fn total_until_stop(codes: &[i64]) -> i64 {
    let mut total = 0;
    for &code in codes {
        match code {
            0 => break,
            _ => total += code,
        }
    }
    total
}

fn main() {
    let codes: Vec<i64> = std::env::args().skip(1).map(|a| a.parse().unwrap()).collect();
    println!("{}", total_until_stop(&codes));
}

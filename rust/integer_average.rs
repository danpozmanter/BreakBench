fn main() {
    let values = vec![3i64, 4];
    let sum: i64 = values.iter().sum();
    let count = values.len() as i64;
    let avg: f64 = sum / count; // BREAK!
    // CONTROL! let avg: f64 = sum as f64 / count as f64;
    println!("{:.1}", avg);
}

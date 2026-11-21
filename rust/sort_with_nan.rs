fn main() {
    let mut xs = vec![5.0, f64::NAN, 3.0, 1.0, f64::NAN, 4.0, 2.0];
    xs.sort(); // BREAK!
    // CONTROL! xs.sort_by(|a, b| a.total_cmp(b));
    let finite: Vec<f64> = xs.iter().copied().filter(|x| !x.is_nan()).collect();
    let ordered = finite.windows(2).all(|w| w[0] <= w[1]);
    println!("{}", if ordered { "ordered" } else { "unordered" });
}

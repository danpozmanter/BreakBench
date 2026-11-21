// LEVEL: STD

fn main() {
    let mut xs = vec![3.0, f64::NAN, 1.0, 2.0];
    xs.sort_by(f64::total_cmp);
    let shown: Vec<String> = xs.iter().map(|x| if x.is_nan() { "NaN".into() } else { x.to_string() }).collect();
    println!("{}", shown.join(" "));
}

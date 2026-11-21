fn main() {
    let mut scores = vec![10, 9, 1];
    scores.sort();
    let text: Vec<String> = scores.iter().map(|s| s.to_string()).collect();
    println!("{}", text.join(" "));
}

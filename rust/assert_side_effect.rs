fn main() {
    let mut jobs = vec![1, 2, 3];
    assert!(jobs.pop() == Some(3));
    println!("{}", jobs.len());
}

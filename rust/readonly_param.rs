fn count(xs: &[i64]) -> usize {
    xs[0] = 9; // BREAK!
    xs.len()
}

fn main() {
    println!("{}", count(&[1, 2, 3]));
}

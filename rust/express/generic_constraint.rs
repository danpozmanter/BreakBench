// LEVEL: LANGUAGE

struct Point {
    x: i64,
    y: i64,
}

fn main() {
    let mut xs = vec![3, 1, 2];
    xs.sort();
    let mut ps = vec![Point { x: 1, y: 2 }]; ps.sort(); // REJECT!
    println!("{}", xs[0]);
}

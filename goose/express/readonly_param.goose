// LEVEL: LANGUAGE

fn count(xs: const i64[:]) -> i64 {
    xs[0] = 9; // REJECT!
    return xs.len;
}

fn main() {
    let xs: i64[3] = [1, 2, 3];
    print(count(xs[..3]));
}

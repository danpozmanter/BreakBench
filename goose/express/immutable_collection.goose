// LEVEL: LANGUAGE

fn main() {
    let xs: const i64[3] = [1, 2, 3];
    xs[0] = 9; // REJECT!
    print(xs.len);
}

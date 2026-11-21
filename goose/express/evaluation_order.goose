// LEVEL: LANGUAGE

var counter: i64 = 0;

fn next() -> i64 {
    counter += 1;
    return counter;
}

fn pair(a: i64, b: i64) { print(a, " ", b); }

fn main() {
    pair(next(), next());
}

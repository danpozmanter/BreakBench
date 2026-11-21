// LEVEL: LANGUAGE

fn main() {
    let i: i64 = -1;
    let n: u64 = 3;
    let wrong = i < n; // REJECT!
    if i < n as i64 {
        print("less");
    } else {
        print("not less");
    }
}

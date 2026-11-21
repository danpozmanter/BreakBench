// LEVEL: LANGUAGE

struct P { x: i64 }

fn main() {
    let a = P { x: 1 };
    var b = a;
    b.x = 9;
    print(a.x);
}

import std;

struct Point { x: i64, y: i64 }

fn main() {
    var xs: i64[>..] = [3, 1, 2];
    sort(xs);
    var ps: Point[>..] = [Point { x: 1, y: 2 }]; // BREAK!
    sort(ps); // BREAK!
    print(xs[0]);
}

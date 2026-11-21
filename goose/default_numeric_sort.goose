import std;

fn main() {
    var scores: i64[3] = [10, 9, 1];
    sort(scores) { a, b => a < b };
    print(scores[0], " ", scores[1], " ", scores[2]);
}

// LEVEL: LANGUAGE

fn main() {
    var i: i64 = 0;
    i++;
    i = i++; // REJECT!
    print(i);
}

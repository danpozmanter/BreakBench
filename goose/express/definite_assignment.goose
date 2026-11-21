// LEVEL: LANGUAGE

fn main() {
    let ready = true;
    var x: i64;
    if ready { x = 5; } else { x = 5; }
    var y: i64; // REJECT!
    if ready { y = 1; } // REJECT!
    print(y); // REJECT!
    print(x);
}

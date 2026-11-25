import std;

fn main() {
    var passes = 0;
    var i: u8 = 0; // BREAK!
    // CONTROL! var i: u16 = 0;
    while i < 300 {
        passes += 1;
        i += 1;
    }
    print(passes);
}

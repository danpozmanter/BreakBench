import std;

fn main() {
    let values: i64[2] = [3, 4];
    let sum = values[0] + values[1];
    let count = values.len;
    let avg: f64 = sum / count; // BREAK!
    // CONTROL! let avg: f64 = sum as f64 / count as f64;
    var out: u8[>..] = [];
    format_flt(out, avg, 1);
    print(out);
}

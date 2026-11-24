import std;

fn main() {
    var xs: i64[>..<] = [];
    xs.push(1); xs.push(2); xs.push(2); xs.push(3);
    for x in xs { // CONTROL! var keep: i64[>..<] = []; for x in xs { if x != 2 { keep.push(x); } } xs = copy(keep);
        if x == 2 { xs.remove_at(position(xs, x)); } // BREAK!
    } // BREAK!
    var out: u8[>..] = [];
    for x in xs {
        if out.len > 0 { out.push(','); }
        format(out, x);
    }
    print(out);
}

var kept = 0;

fn make() -> i64& {
    var local = 4242;
    return local; // BREAK!
    // CONTROL! kept = local; return kept;
}

fn clobber() -> i64 {
    var junk: i64[64] = [7; 64];
    return junk[63];
}

fn main() {
    let r = make();
    clobber();
    print(r);
}

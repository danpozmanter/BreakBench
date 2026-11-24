fn apply_update(weights: i64[>..]&) {
    weights[1] = 5;
    weights[3] = 0;
}

fn main() {
    var weights: i64[>..] = [3, 3, 3, 3];
    let before = weights; // CONTROL! var before: i64[>..] = []; for w in weights { before.push(w); }
    apply_update(weights);
    var changes = 0;
    for i in weights.len {
        if before[i] != weights[i] { changes += 1; }
    }
    print(changes);
}

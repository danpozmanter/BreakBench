fn apply_update(weights: i64[>..]&) {
    weights[1] = 5;
    weights[3] = 0;
}

fn main() {
    var weights: i64[>..] = [3, 3, 3, 3];
    let before = weights;
    apply_update(weights);
    var changes = 0;
    for i in weights.len {
        if before[i] != weights[i] { changes += 1; }
    }
    print(changes);
}

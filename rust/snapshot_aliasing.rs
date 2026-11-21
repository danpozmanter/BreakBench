fn apply_update(weights: &mut Vec<i64>) {
    weights[1] = 5;
    weights[3] = 0;
}

fn main() {
    let mut weights = vec![3, 3, 3, 3];
    let before = weights; // BREAK!
    // CONTROL! let before = weights.clone();
    apply_update(&mut weights);
    let changes = (0..weights.len()).filter(|&i| before[i] != weights[i]).count();
    println!("{}", changes);
}

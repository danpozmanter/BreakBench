fn main() {
    let mut xs = vec![1, 2, 2, 3];
    for x in &xs {
        if *x == 2 {
            let pos = xs.iter().position(|y| y == x).unwrap(); // BREAK!
            xs.remove(pos); // BREAK!
        }
    }
    xs.retain(|&x| x != 2);
    let out: Vec<String> = xs.iter().map(|x| x.to_string()).collect();
    println!("{}", out.join(","));
}

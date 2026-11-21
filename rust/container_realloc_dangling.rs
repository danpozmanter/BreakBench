struct Item {
    val: i32,
}

fn main() {
    let mut v = vec![Item { val: 1 }];
    let r = &mut v[0];
    for i in 0..1000 {
        v.push(Item { val: i });
    }
    let w = vec![Item { val: 7 }];
    r.val = 99; // BREAK!
    println!("{}", w[0].val);
}

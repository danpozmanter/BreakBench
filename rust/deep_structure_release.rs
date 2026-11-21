struct Node {
    value: i64,
    next: Option<Box<Node>>,
}

fn main() {
    let n: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    {
        let mut head: Option<Box<Node>> = None;
        for i in 0..n {
            head = Some(Box::new(Node { value: i, next: head }));
        }
        let _ = head.as_ref().map(|node| node.value);
    }
    println!("done");
}

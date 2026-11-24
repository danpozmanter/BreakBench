use std::cell::RefCell;
use std::rc::Rc;

struct Node {
    data: Vec<u8>,
    other: Option<Rc<RefCell<Node>>>,
}

fn main() {
    let n: usize = std::env::args().nth(1).unwrap().parse().unwrap();
    for _ in 0..n {
        let parent = Rc::new(RefCell::new(Node { data: vec![1; 4096], other: None }));
        let child = Rc::new(RefCell::new(Node { data: vec![1; 4096], other: Some(Rc::clone(&parent)) }));
        parent.borrow_mut().other = Some(Rc::clone(&child));
        assert_eq!(child.borrow().data.len(), parent.borrow().data.len());
        // CONTROL! parent.borrow_mut().other = None;
    }
    println!("done");
}

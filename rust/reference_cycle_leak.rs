use std::cell::RefCell;
use std::rc::Rc;

struct Node {
    next: Option<Rc<RefCell<Node>>>,
    payload: [u8; 2048],
}

struct Obj {
    payload: [u8; 2048],
    callback: Option<Box<dyn Fn() -> usize>>,
}

fn main() {
    let n: i64 = std::env::args().nth(1).unwrap().parse().unwrap();
    let mut total = 0;
    for _ in 0..n {
        let a = Rc::new(RefCell::new(Node { next: None, payload: [0; 2048] }));
        let b = Rc::new(RefCell::new(Node { next: Some(a.clone()), payload: [1; 2048] }));
        a.borrow_mut().next = Some(b.clone());
        std::hint::black_box(&b.borrow().payload);
        let o = Rc::new(RefCell::new(Obj { payload: [0; 2048], callback: None }));
        let captured = o.clone();
        o.borrow_mut().callback = Some(Box::new(move || captured.borrow().payload.len()));
        total += (o.borrow().callback.as_ref().unwrap())();
    }
    println!("{}", if total == usize::MAX { "unreachable" } else { "done" });
}

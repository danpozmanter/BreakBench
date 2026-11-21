// LEVEL: STD

use std::rc::Rc;

fn main() {
    let strong = Rc::new(1);
    let weak = Rc::downgrade(&strong);
    drop(strong);
    println!("{}", if weak.upgrade().is_none() { "gone" } else { "alive" });
}

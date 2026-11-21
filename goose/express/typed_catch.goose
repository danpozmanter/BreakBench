// LEVEL: STD

import exception;

enum Kind { A, B }

fn throw_a() { exception::throw(Kind.A); }
fn throw_b() { exception::throw(Kind.B); }

fn handle(e: Kind) {
    if e == Kind.A {
        print("caught A");
    } else {
        exception::throw(e);
    }
}

fn step(a: bool) {
    if a {
        exception::try<Kind>(throw_a) { e => handle(e); };
    } else {
        exception::try<Kind>(throw_b) { e => handle(e); };
    }
}

fn run() {
    step(true);
    step(false);
}

fn main() {
    exception::try<Kind>(run) { e => if e == Kind.B { print("passed B"); } };
}

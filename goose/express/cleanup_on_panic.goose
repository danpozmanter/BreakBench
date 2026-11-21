// LEVEL: STD

import exception;

fn work() {
    defer print("cleanup");
    exception::throw(1);
}

fn main() {
    exception::try<i64>(work) { e => print("recovered"); };
}

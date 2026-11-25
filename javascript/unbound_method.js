"use strict";

class Counter {
  count = 0;

  increment() {
    this.count += 1;
  }
}

function runTwice(f) {
  f();
  f();
}

const counter = new Counter();
runTwice(counter.increment); // CONTROL! runTwice(() => counter.increment());
console.log(counter.count);

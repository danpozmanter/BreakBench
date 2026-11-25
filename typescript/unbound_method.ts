class Counter {
  count = 0;

  increment(): void {
    this.count += 1;
  }
}

function runTwice(f: () => void): void {
  f();
  f();
}

const counter = new Counter();
runTwice(counter.increment); // CONTROL! runTwice(() => counter.increment());
console.log(counter.count);

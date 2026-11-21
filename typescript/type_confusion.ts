function add(a: number, b: number): number {
  return a + b;
}

const raw = process.argv[2];
console.log(add(raw, 3)); // BREAK!
console.log(raw, add(1, 2));

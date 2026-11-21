function show(f: number): void {
  console.log(f);
}

const n = 7n;
show(Number(n));
show(n); // BREAK!

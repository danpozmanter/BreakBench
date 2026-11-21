function count(xs: readonly number[]): number {
  xs[0] = 9; // BREAK!
  return xs.length;
}

console.log(count([1, 2, 3]));

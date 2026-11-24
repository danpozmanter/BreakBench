function* filter(xs: Iterable<number>, keep: (x: number) => boolean): Generator<number> {
  for (const x of xs) if (keep(x)) yield x;
}

const xs = [1, 2, 3, 4, 5, 6];
const evens = filter(xs, (x) => x % 2 === 0); // CONTROL! const evens = [...filter(xs, (x) => x % 2 === 0)];
let total = 0;
for (const x of evens) total += x;
let count = 0;
for (const _ of evens) count++;
console.log(`${total} ${count}`);

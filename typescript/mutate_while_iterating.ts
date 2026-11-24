const xs: number[] = [1, 2, 2, 3];
for (const x of xs) { // CONTROL! for (let i = xs.length - 1; i >= 0; i--) {
  if (x === 2) xs.splice(xs.indexOf(x), 1); // CONTROL! if (xs[i] === 2) xs.splice(i, 1);
}
console.log(xs.join(","));

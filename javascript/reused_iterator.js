"use strict";

const xs = [1, 2, 3, 4, 5, 6];
const evens = Iterator.from(xs).filter((x) => x % 2 === 0);
let total = 0;
for (const x of evens) total += x;
let count = 0;
for (const _ of evens) count++;
console.log(`${total} ${count}`);

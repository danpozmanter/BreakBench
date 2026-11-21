"use strict";

const xs = [1, 2, 2, 3];
for (const x of xs) {
  if (x === 2) xs.splice(xs.indexOf(x), 1);
}
console.log(xs.join(","));

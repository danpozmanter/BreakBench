"use strict";

const xs = [5, NaN, 3, 1, NaN, 4, 2];
xs.sort((a, b) => a - b);
const finite = xs.filter((x) => !Number.isNaN(x));
const ordered = finite.every((x, i) => i === 0 || finite[i - 1] <= x);
console.log(ordered ? "ordered" : "unordered");

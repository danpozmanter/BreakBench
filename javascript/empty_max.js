"use strict";

const xs = process.argv.slice(2).map(Number);
console.log(Math.max(...xs) + 1); // CONTROL! console.log(xs.length === 0 ? "no readings" : Math.max(...xs) + 1);

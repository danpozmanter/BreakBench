"use strict";

function walk(n) {
  if (n === 0) return 0;
  return (walk(n - 1) * 31 + n) % 1000000007;
}

console.log(walk(Number(process.argv[2])));

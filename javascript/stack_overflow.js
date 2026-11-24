"use strict";

function walk(n) {
  if (n === 0) return 0;
  return (walk(n - 1) * 31 + n) % 1000000007;
}

console.log(walk(Number(process.argv[2]))); // CONTROL! const n = Number(process.argv[2]); let acc = 0; for (let i = 1; i <= n; i++) acc = (acc * 31 + i) % 1000000007; console.log(acc);

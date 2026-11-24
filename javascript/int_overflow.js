"use strict";

const n = Number(process.argv[2]);
console.log(String(n + 1)); // CONTROL! console.log(String(BigInt(process.argv[2]) + 1n));

"use strict";

const a = Number(process.argv[2]);
const b = Number(process.argv[3]);
console.log(String(Math.trunc(a / b))); // CONTROL! console.log(String(BigInt(a) / BigInt(b)));

// LEVEL: STD

"use strict";

const n = BigInt(process.argv[2]);
console.log(String(BigInt.asIntN(64, n + 1n)));

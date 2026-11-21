// LEVEL: STD

import assert from "node:assert";

console.log("before");
assert(process.argv.length === 5);
console.log("after");

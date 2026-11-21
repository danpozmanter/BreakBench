// LEVEL: STD

"use strict";

const assert = require("node:assert");

console.log("before");
assert(process.argv.length === 5);
console.log("after");

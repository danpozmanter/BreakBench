// LEVEL: STD

"use strict";

const { timingSafeEqual } = require("crypto");

const a = Buffer.alloc(16, 7);
const b = Buffer.alloc(16, 7);
console.log(timingSafeEqual(a, b) ? "equal" : "different");

"use strict";

const x = Number(process.argv[2]);
const even = x & 1 == 0; // CONTROL! const even = (x & 1) === 0;
console.log(even ? "even" : "odd");

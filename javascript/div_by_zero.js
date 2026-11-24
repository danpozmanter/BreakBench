"use strict";

const d = Number(process.argv[2]);
console.log(Math.trunc(100 / d)); // CONTROL! console.log(d === 0 ? "cannot divide" : String(Math.trunc(100 / d)));

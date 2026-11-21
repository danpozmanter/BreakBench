"use strict";

const n = Number(process.argv[2]);
const buf = new Uint8Array(n);
buf[n - 1] = 1;
console.log(buf.length);

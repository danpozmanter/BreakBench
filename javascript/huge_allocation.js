"use strict";

const n = Number(process.argv[2]);
// CONTROL! if (n > 2 ** 30) { console.log("too large"); process.exit(0); }
const buf = new Uint8Array(n);
buf[n - 1] = 1;
console.log(buf.length);

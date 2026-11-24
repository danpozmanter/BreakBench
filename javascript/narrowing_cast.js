"use strict";

const v = Number(process.argv[2]);
// CONTROL! if (v < 0 || v > 255) { console.log("out of range"); process.exit(0); }
const b = new Uint8Array([v])[0];
console.log(b);

"use strict";

const f = { buf: new Int32Array([1, 2, 3, 4]), secret: 42 };
const idx = Number(process.argv[2]);
console.log(f.buf[idx]);

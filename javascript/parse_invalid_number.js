"use strict";

const n = parseInt(process.argv[2]); // CONTROL! const raw = process.argv[2]; const n = /^-?\d+$/.test(raw) ? Number(raw) : NaN;
console.log(n + 1); // CONTROL! console.log(Number.isNaN(n) ? "invalid" : n + 1);

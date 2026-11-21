// LEVEL: STD

"use strict";

const n = Number(process.argv[2]);
try {
  new ArrayBuffer(n);
  console.log("allocated");
} catch {
  console.log("allocation failed");
}

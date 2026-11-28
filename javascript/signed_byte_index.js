"use strict";

const counts = new Array(256).fill(0);
for (const b of Buffer.from(process.argv[2])) counts[b]++;
console.log(counts.slice(128).reduce((a, b) => a + b, 0));

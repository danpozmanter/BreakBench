"use strict";

const count = Number(process.argv[2]);
const mean = 0 / count;
console.log(JSON.stringify({ mean })); // CONTROL! console.log(Number.isFinite(mean) ? JSON.stringify({ mean }) : "refused");

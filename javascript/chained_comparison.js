"use strict";

const x = Number(process.argv[2]);
const inside = 1 < x < 3; // CONTROL! const inside = 1 < x && x < 3;
console.log(inside ? "inside" : "outside");

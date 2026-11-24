"use strict";

const name = "a👍b";
const n = Number(process.argv[2]);
console.log(name.slice(0, n)); // CONTROL! console.log(Array.from(name).slice(0, n).join(""));

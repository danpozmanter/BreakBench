"use strict";

const ids = [10, 20, 30];
const id = process.argv[2];
console.log(ids.includes(id) ? "found" : "missing"); // CONTROL! console.log(ids.includes(Number(id)) ? "found" : "missing");

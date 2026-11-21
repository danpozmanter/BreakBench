"use strict";

const readings = [10, 20, 30];
const i = Number(process.argv[2]);
console.log(readings[i] - readings[i - 1]);

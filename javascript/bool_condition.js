"use strict";

const compare = (a, b) => a.localeCompare(b);

if (compare("x", "x")) console.log("same"); // CONTROL! if (compare("x", "x") === 0) console.log("same");
else console.log("different");
